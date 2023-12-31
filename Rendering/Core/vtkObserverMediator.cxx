/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkObserverMediator.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkObserverMediator.h"
#include "vtkInteractorObserver.h"
#include "vtkObjectFactory.h"
#include "vtkPriorityQueue.h"
#include "vtkRenderWindow.h"
#include "vtkRenderWindowInteractor.h"
#include <map>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkObserverMediator);

// PIMPL the map representing the observer (key) to cursor request
// (data). Note that only observers who are requesting non-default cursors
// are placed into the map.
// Comparison functor based on observer priorities (for the purpose of sorting
// the cursor request in the map).
struct vtkObserverCompare
{
  bool operator()(vtkInteractorObserver* w1, vtkInteractorObserver* w2) const
  {
    float p1 = w1->GetPriority();
    float p2 = w2->GetPriority();

    if (p1 < p2)
    {
      return true;
    }
    else if (p1 == p2)
    {
      return w1 < w2;
    }
    else
    {
      return false;
    }
  }
};

// The important feature of the map is that it sorts data (based on the functor above).
class vtkObserverMap : public std::map<vtkInteractorObserver*, int, vtkObserverCompare>
{
public:
  vtkObserverMap() = default;
};
typedef vtkObserverMap::iterator ObserverMapIterator;

//------------------------------------------------------------------------------
vtkObserverMediator::vtkObserverMediator()
{
  this->Interactor = nullptr;
  this->ObserverMap = new vtkObserverMap;

  this->CurrentObserver = nullptr;
  this->CurrentCursorShape = VTK_CURSOR_DEFAULT;
}

//------------------------------------------------------------------------------
vtkObserverMediator::~vtkObserverMediator()
{
  delete this->ObserverMap;
}

//------------------------------------------------------------------------------
void vtkObserverMediator::SetInteractor(vtkRenderWindowInteractor* i)
{
  this->Interactor = i;
}

//------------------------------------------------------------------------------
// This mediation process works by keeping track of non-default cursor
// requests.
// Ties are broken based on widget priority (hence the priority queue).
int vtkObserverMediator::RequestCursorShape(vtkInteractorObserver* w, int requestedShape)
{
  if (!this->Interactor || !w)
  {
    return 0;
  }

  // First remove previous requests from the map. Note we have to use our own
  // special version of find() because the sorting of the map using the function
  // vtkObserverCompare() screws up the usual find().
  ObserverMapIterator iter = this->ObserverMap->begin();
  for (; iter != this->ObserverMap->end(); ++iter)
  {
    if ((*iter).first == w)
    {
      this->ObserverMap->erase(iter);
      break;
    }
  }

  // Now see whether we have to set to the default cursor, or add the latest request.
  if (this->ObserverMap->empty() && requestedShape == VTK_CURSOR_DEFAULT &&
    this->CurrentCursorShape != VTK_CURSOR_DEFAULT)
  {
    this->Interactor->GetRenderWindow()->SetCurrentCursor(VTK_CURSOR_DEFAULT);
    this->CurrentCursorShape = VTK_CURSOR_DEFAULT;
    return 1;
  }
  else if (requestedShape != VTK_CURSOR_DEFAULT)
  {
    (*this->ObserverMap)[w] = requestedShape;

    // Find the highest priority and set that
    if (!this->ObserverMap->empty())
    {
      iter = this->ObserverMap->end();
      --iter; // this is the observer with the highest priority
      // Have to set the current cursor repeatedly or it reverts back to default
      // (at least on windows it does).
      this->Interactor->GetRenderWindow()->SetCurrentCursor((*iter).second);
      if (this->CurrentCursorShape != (*iter).second)
      {
        this->CurrentCursorShape = (*iter).second;
        return 1;
      }
    }
  }

  return 0;
}

//------------------------------------------------------------------------------
void vtkObserverMediator::RemoveAllCursorShapeRequests(vtkInteractorObserver* w)
{
  if (w)
  {
    ObserverMapIterator iter = this->ObserverMap->begin();
    for (; iter != this->ObserverMap->end(); ++iter)
    {
      if ((*iter).first == w)
      {
        this->ObserverMap->erase(iter);
        break;
      }
    }
  }
}

//------------------------------------------------------------------------------
void vtkObserverMediator::PrintSelf(ostream& os, vtkIndent indent)
{
  // Superclass typedef defined in vtkTypeMacro() found in vtkSetGet.h
  this->Superclass::PrintSelf(os, indent);

  os << indent << "Render Window Interactor: ";
  if (this->Interactor)
  {
    os << this->Interactor << "\n";
  }
  else
  {
    os << "(None)\n";
  }
}
VTK_ABI_NAMESPACE_END
