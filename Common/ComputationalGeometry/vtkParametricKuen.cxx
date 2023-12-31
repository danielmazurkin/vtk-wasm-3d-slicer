/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkParametricKuen.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkParametricKuen.h"
#include "vtkMath.h"
#include "vtkObjectFactory.h"

#include <cfloat>
#include <cmath>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkParametricKuen);
//----------------------------------------------------------------------------//
vtkParametricKuen::vtkParametricKuen()
{
  // Preset triangulation parameters
  this->MinimumU = -4.5;
  this->MaximumU = 4.5;
  this->MinimumV = 0.0;
  this->MaximumV = vtkMath::Pi();

  this->JoinU = 0;
  this->JoinV = 0;
  this->TwistU = 0;
  this->TwistV = 0;
  this->ClockwiseOrdering = 0;
  this->DerivativesAvailable = 1;

  this->DeltaV0 = 0.05;
}

//----------------------------------------------------------------------------//
vtkParametricKuen::~vtkParametricKuen() = default;

//----------------------------------------------------------------------------//
void vtkParametricKuen::Evaluate(double uvw[3], double Pt[3], double Duvw[9])
{
  // Copy the parameters out of the vector, for the sake of convenience.
  double u = uvw[0];
  double v = uvw[1];

  // This is needed to prevent Pt[2] going to -inf.
  v = (v == 0 ? this->DeltaV0 : v);

  // We're only going to need the u and v partial derivatives.
  // The w partial derivatives are not needed.
  double* Du = Duvw;
  double* Dv = Duvw + 3;

  // Instead of a bunch of calls to the trig library,
  // just call it once and store the results.
  double cosu = cos(u);
  double cosv = cos(v);
  double sinu = sin(u);
  double sinv = sin(v);
  double denom_1 = 1. + u * u * sinv * sinv;
  double denom_2;
  if (std::abs(sinv) < 1.0e-9)
  {
    denom_2 = 0;
  }
  else
  {
    denom_2 = u * u + 1. / (sinv * sinv);
  }

  // Location of the point. This parametrization was taken from:
  // http://mathworld.wolfram.com/KuenSurface.html

  // Conditional is needed to prevent Pt[2] going to inf (due to log(tan(Pi/2))).
  // Limit of log(tan(0))=1.
  double logTanvO2 =
    ((vtkMath::Pi() - FLT_EPSILON <= v) && (v <= vtkMath::Pi() + FLT_EPSILON) ? 1.0
                                                                              : log(tan(v / 2.0)));
  Pt[0] = 2. * sinv * (sinu - u * cosu) / denom_1;
  Pt[1] = 2. * sinv * (cosu + u * sinu) / denom_1;
  Pt[2] = logTanvO2 + 2. * cosv / denom_1;

  // The derivative with respect to u:
  Du[1] = (2. * u * sinv * (cosu + ((u * u - 2.) * cosu - 2. * u * sinu) * sinv * sinv)) /
    (denom_1 * denom_1);

  // Avoid division by 0
  if (denom_2 == 0.0 || sinv == 0.0)
  {
    Du[0] = 0.0;
    Du[2] = 0.0;
  }
  else
  {
    Du[0] = (2. * u / sinv * (2. * u * cosu + (u * u - 2. + 1 / (sinv * sinv)) * sinu)) /
      (denom_2 * denom_2);
    Du[2] = -4. * u * cosv / (denom_2 * denom_2 * sinv * sinv);
  }

  // The derivative with respect to v:
  Dv[0] = 2. * cosv * (u * u * sinv * sinv - 1.) * (u * cosu - sinu) / (denom_1 * denom_1);
  Dv[1] = 2. * cosv * (1. - u * u * sinv * sinv) * (cosu + u * sinu) / (denom_1 * denom_1);
  Dv[2] = 1. / sinv - (2. + u * u * (3. + cos(2 * u))) * sinv / (denom_1 * denom_1);
}

//----------------------------------------------------------------------------//
double vtkParametricKuen::EvaluateScalar(double*, double*, double*)
{
  return 0;
}

//----------------------------------------------------------------------------//
void vtkParametricKuen::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);

  os << indent << "DeltaV0: " << this->DeltaV0 << "\n";
}
VTK_ABI_NAMESPACE_END
