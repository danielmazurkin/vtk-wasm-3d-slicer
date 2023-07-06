
#ifndef VTKIMAGINGSTENCIL_EXPORT_H
#define VTKIMAGINGSTENCIL_EXPORT_H

#ifdef VTKIMAGINGSTENCIL_STATIC_DEFINE
#  define VTKIMAGINGSTENCIL_EXPORT
#  define VTKIMAGINGSTENCIL_NO_EXPORT
#else
#  ifndef VTKIMAGINGSTENCIL_EXPORT
#    ifdef ImagingStencil_EXPORTS
        /* We are building this library */
#      define VTKIMAGINGSTENCIL_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIMAGINGSTENCIL_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIMAGINGSTENCIL_NO_EXPORT
#    define VTKIMAGINGSTENCIL_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIMAGINGSTENCIL_DEPRECATED
#  define VTKIMAGINGSTENCIL_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIMAGINGSTENCIL_DEPRECATED_EXPORT
#  define VTKIMAGINGSTENCIL_DEPRECATED_EXPORT VTKIMAGINGSTENCIL_EXPORT VTKIMAGINGSTENCIL_DEPRECATED
#endif

#ifndef VTKIMAGINGSTENCIL_DEPRECATED_NO_EXPORT
#  define VTKIMAGINGSTENCIL_DEPRECATED_NO_EXPORT VTKIMAGINGSTENCIL_NO_EXPORT VTKIMAGINGSTENCIL_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIMAGINGSTENCIL_NO_DEPRECATED
#    define VTKIMAGINGSTENCIL_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkImagingStencilModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKIMAGINGSTENCIL_EXPORT_H */
