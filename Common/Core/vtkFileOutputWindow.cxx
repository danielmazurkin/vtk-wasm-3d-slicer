/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkFileOutputWindow.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkFileOutputWindow.h"
#include "vtkObjectFactory.h"
#include "vtksys/FStream.hxx"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkFileOutputWindow);

vtkFileOutputWindow::vtkFileOutputWindow()
{
  this->OStream = nullptr;
  this->FileName = nullptr;
  this->Append = 0;
  this->Flush = 0;
}

vtkFileOutputWindow::~vtkFileOutputWindow()
{
  delete[] this->FileName;
  delete this->OStream;
}

void vtkFileOutputWindow::Initialize()
{
  if (!this->OStream)
  {
    if (!this->FileName)
    {
      const char fileName[] = "vtkMessageLog.log";
      this->FileName = new char[strlen(fileName) + 1];
      strcpy(this->FileName, fileName);
    }
    this->OStream = new vtksys::ofstream(this->FileName, this->Append ? ios::app : ios::out);
  }
}

void vtkFileOutputWindow::DisplayText(const char* text)
{
  if (!text)
  {
    return;
  }

  if (!this->OStream)
  {
    this->Initialize();
  }
  *this->OStream << text << endl;

  if (this->Flush)
  {
    this->OStream->flush();
  }
}

void vtkFileOutputWindow::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  os << indent << "OStream: " << this->OStream << endl;
  os << indent << "File Name: " << (this->FileName ? this->FileName : "(none)") << "\n";
  os << indent << "Append: " << (this->Append ? "On" : "Off") << endl;
  os << indent << "Flush: " << (this->Flush ? "On" : "Off") << endl;
}
VTK_ABI_NAMESPACE_END
