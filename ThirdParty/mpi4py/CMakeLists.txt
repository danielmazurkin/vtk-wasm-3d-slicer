#==========================================================================
#
#     Program: ParaView
#
# Copyright (c) Sandia Corporation, Kitware Inc.
# All rights reserved.
# See Copyright.txt or http://www.kitware.com/Copyright.htm for details.
#
#    This software is distributed WITHOUT ANY WARRANTY; without even
#    the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
#    PURPOSE.  See the above copyright notice for more information.
#
#
#==========================================================================

vtk_module_third_party(
  INTERNAL
    LICENSE_FILES "vtkmpi4py/LICENSE.rst"
    VERSION       "3.1.4"
  EXTERNAL
    PACKAGE mpi4py
    TARGETS mpi4py::mpi4py)
