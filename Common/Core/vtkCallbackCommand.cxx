/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkCallbackCommand.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkCallbackCommand.h"

//----------------------------------------------------------------
VTK_ABI_NAMESPACE_BEGIN
vtkCallbackCommand::vtkCallbackCommand()
{
  this->ClientData = nullptr;
  this->Callback = nullptr;
  this->ClientDataDeleteCallback = nullptr;
  this->AbortFlagOnExecute = 0;
}

//----------------------------------------------------------------
vtkCallbackCommand::~vtkCallbackCommand()
{
  if (this->ClientDataDeleteCallback)
  {
    this->ClientDataDeleteCallback(this->ClientData);
  }
}

//----------------------------------------------------------------
void vtkCallbackCommand::Execute(vtkObject* caller, unsigned long event, void* callData)
{
  if (this->Callback)
  {
    this->Callback(caller, event, this->ClientData, callData);
    if (this->AbortFlagOnExecute)
    {
      this->AbortFlagOn();
    }
  }
}
VTK_ABI_NAMESPACE_END
