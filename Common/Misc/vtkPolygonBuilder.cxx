/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPolygonBuilder.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkPolygonBuilder.h"
#include "vtkIdListCollection.h"

VTK_ABI_NAMESPACE_BEGIN
vtkPolygonBuilder::vtkPolygonBuilder() = default;

void vtkPolygonBuilder::InsertTriangle(const vtkIdType* abc)
{
  // basic sanity check (see TestPolygonBuilder3)
  if (!abc)
  {
    return;
  }

  // don't use collapsed triangles - they can give a crash later on
  // during the do-while loop in GetPolygons due to the presence of
  // naked, unconnected edges (see TestPolygonBuilder2)
  if (abc[0] == abc[1] || abc[0] == abc[2] || abc[1] == abc[2])
  {
    return;
  }

  vtkIdType key = abc[0] + abc[1] + abc[2];
  bool duplicate(false);
  TriangleMap::iterator found = this->Tris.find(key);
  if (found != Tris.end())
  {
    Triangles& tris = found->second;
    for (Triangles::iterator it = tris.begin(); !duplicate && it != tris.end(); ++it)
    {
      Triangle& tri = *it;
      for (int i = 0; i < 3; ++i)
      {
        vtkIdType ta = tri[(i + 0) % 3];
        vtkIdType tb = tri[(i + 1) % 3];
        vtkIdType tc = tri[(i + 2) % 3];
        if (abc[0] == ta && abc[1] == tb && abc[2] == tc)
        {
          duplicate = true;
          break;
        }
        if (abc[2] == ta && abc[1] == tb && abc[0] == tc)
        {
          duplicate = true;
          break;
        }
      }
    }
    Triangle my;
    my.push_back(abc[0]);
    my.push_back(abc[1]);
    my.push_back(abc[2]);
    tris.push_back(my);
  }
  else
  {
    Triangles tris;
    Triangle my;
    my.push_back(abc[0]);
    my.push_back(abc[1]);
    my.push_back(abc[2]);
    tris.push_back(my);
    this->Tris[key] = tris;
  }
  if (duplicate)
  {
    // ignoring duplicate triangle
    return;
  }

  // For each triangle edge: the number of instances of each edge are recorded,
  // and edges with exactly one instance are stored. Triangle edges are only
  // traversed in a counterclockwise direction.
  for (int i = 0; i < 3; i++)
  {
    Edge edge(abc[i], abc[(i + 1) % 3]);
    Edge inverseEdge(abc[(i + 1) % 3], abc[i]);

    ++(this->EdgeCounter[edge]);

    if (this->EdgeCounter[inverseEdge] == 0)
    {
      this->Edges.insert(std::make_pair(edge.first, edge.second));
    }
    else if (this->EdgeCounter[edge] == 1)
    {
      std::pair<EdgeMap::iterator, EdgeMap::iterator> range = Edges.equal_range(inverseEdge.first);

      EdgeMap::iterator it = range.first;
      for (; it != range.second; ++it)
      {
        if (it->second == inverseEdge.second)
        {
          Edges.erase(it);
          break;
        }
      }
    }
  }
}

void vtkPolygonBuilder::GetPolygons(vtkIdListCollection* polys)
{
  polys->RemoveAllItems();

  // We now have exactly one instance of each outer edge, corresponding to a
  // counterclockwise traversal of the polygon
  if (this->Edges.size() < 3)
  {
    return;
  }

  while (!(this->Edges.empty()))
  {
    vtkIdList* poly = vtkIdList::New();

    EdgeMap::iterator edgeIt = this->Edges.begin();
    Edge edge = *(edgeIt);

    vtkIdType firstVtx = edge.first;

    do
    {
      poly->InsertNextId(edge.first);
      EdgeMap::iterator at = this->Edges.find(edge.second);
      // ignore polygon if Edges map not correct - with the fixes for
      // ignoring collapsed triangles and ignoring duplicate triangles
      // this should not happen anymore, but it does not hurt to be safe.
      //
      // UPDATE: from a real-world polyhedron case it IS possible to
      // get dangling edges. See TestPolygonBuilder5 for details.
      if (at == this->Edges.end())
      {
        Edges.erase(edgeIt); // remove offending edge
        poly->Reset();       // empty the list so it does not get added below
        break;
      }
      edge = *(at);
      Edges.erase(at);
    } while (edge.first != firstVtx);

    if (poly->GetNumberOfIds() > 0)
    {
      polys->AddItem(poly);
    }
    else
    {
      poly->Delete(); // don't leak on failure
    }
  }

  this->Reset();
}

void vtkPolygonBuilder::Reset()
{
  this->EdgeCounter.clear();
  this->Edges.clear();
}
VTK_ABI_NAMESPACE_END
