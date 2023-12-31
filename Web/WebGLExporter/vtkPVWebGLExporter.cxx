/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPVWebGLExporter.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkPVWebGLExporter.h"

#include "vtkBase64Utilities.h"
#include "vtkCamera.h"
#include "vtkExporter.h"
#include "vtkNew.h"
#include "vtkObjectFactory.h"
#include "vtkRenderWindow.h"
#include "vtkRenderer.h"
#include "vtkRendererCollection.h"
#include "vtkWebGLExporter.h"
#include "vtkWebGLObject.h"

#include <fstream>
#include <sstream>
#include <string>
#include <vtksys/FStream.hxx>
#include <vtksys/SystemTools.hxx>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkPVWebGLExporter);
//------------------------------------------------------------------------------
vtkPVWebGLExporter::vtkPVWebGLExporter()
{
  this->FileName = nullptr;
}

//------------------------------------------------------------------------------
vtkPVWebGLExporter::~vtkPVWebGLExporter()
{
  this->SetFileName(nullptr);
}

//------------------------------------------------------------------------------
void vtkPVWebGLExporter::WriteData()
{
  // make sure the user specified a FileName or FilePointer
  if (this->FileName == nullptr)
  {
    vtkErrorMacro(<< "Please specify FileName to use");
    return;
  }

  vtkNew<vtkWebGLExporter> exporter;
  exporter->SetMaxAllowedSize(65000);

  // We use the camera focal point to be the center of rotation
  double centerOfRotation[3];
  vtkRenderer* ren = this->RenderWindow->GetRenderers()->GetFirstRenderer();
  vtkCamera* cam = ren->GetActiveCamera();
  cam->GetFocalPoint(centerOfRotation);
  exporter->SetCenterOfRotation(static_cast<float>(centerOfRotation[0]),
    static_cast<float>(centerOfRotation[1]), static_cast<float>(centerOfRotation[2]));

  exporter->parseScene(this->RenderWindow->GetRenderers(), "1", VTK_PARSEALL);

  // Write meta-data file
  std::string baseFileName = this->FileName;
  baseFileName.erase(baseFileName.size() - 6, 6);
  std::string metadatFile = this->FileName;
  FILE* fp = vtksys::SystemTools::Fopen(metadatFile, "w");
  if (!fp)
  {
    vtkErrorMacro(<< "unable to open JSON MetaData file " << metadatFile);
    return;
  }
  fputs(exporter->GenerateMetadata(), fp);
  fclose(fp);

  // Write binary objects
  vtkNew<vtkBase64Utilities> base64;
  int nbObjects = exporter->GetNumberOfObjects();
  for (int idx = 0; idx < nbObjects; ++idx)
  {
    vtkWebGLObject* obj = exporter->GetWebGLObject(idx);
    if (obj->isVisible())
    {
      int nbParts = obj->GetNumberOfParts();
      for (int part = 0; part < nbParts; ++part)
      {
        // Manage binary content
        std::stringstream filePath;
        filePath << baseFileName << "_" << obj->GetMD5() << "_" << part;
        vtksys::ofstream binaryFile;
        binaryFile.open(filePath.str().c_str(), std::ios_base::out | std::ios_base::binary);
        binaryFile.write((const char*)obj->GetBinaryData(part), obj->GetBinarySize(part));
        binaryFile.close();

        // Manage Base64
        std::stringstream filePathBase64;
        filePathBase64 << baseFileName << "_" << obj->GetMD5() << "_" << part << ".base64";
        vtksys::ofstream base64File;
        unsigned char* output = new unsigned char[obj->GetBinarySize(part) * 2];
        int size =
          base64->Encode(obj->GetBinaryData(part), obj->GetBinarySize(part), output, false);
        base64File.open(filePathBase64.str().c_str(), std::ios_base::out);
        base64File.write((const char*)output, size);
        base64File.close();
        delete[] output;
      }
    }
  }

  // Write HTML file
  std::string htmlFile = baseFileName;
  htmlFile += ".html";
  exporter->exportStaticScene(this->RenderWindow->GetRenderers(), 300, 300, htmlFile);
}
//------------------------------------------------------------------------------
void vtkPVWebGLExporter::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);

  if (this->FileName)
  {
    os << indent << "FileName: " << this->FileName << "\n";
  }
  else
  {
    os << indent << "FileName: (null)\n";
  }
}
VTK_ABI_NAMESPACE_END
