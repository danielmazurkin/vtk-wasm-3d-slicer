
#ifndef VTKIMAGINGHYBRID_EXPORT_H
#define VTKIMAGINGHYBRID_EXPORT_H

#ifdef VTKIMAGINGHYBRID_STATIC_DEFINE
#  define VTKIMAGINGHYBRID_EXPORT
#  define VTKIMAGINGHYBRID_NO_EXPORT
#else
#  ifndef VTKIMAGINGHYBRID_EXPORT
#    ifdef ImagingHybrid_EXPORTS
        /* We are building this library */
#      define VTKIMAGINGHYBRID_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIMAGINGHYBRID_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIMAGINGHYBRID_NO_EXPORT
#    define VTKIMAGINGHYBRID_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIMAGINGHYBRID_DEPRECATED
#  define VTKIMAGINGHYBRID_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIMAGINGHYBRID_DEPRECATED_EXPORT
#  define VTKIMAGINGHYBRID_DEPRECATED_EXPORT VTKIMAGINGHYBRID_EXPORT VTKIMAGINGHYBRID_DEPRECATED
#endif

#ifndef VTKIMAGINGHYBRID_DEPRECATED_NO_EXPORT
#  define VTKIMAGINGHYBRID_DEPRECATED_NO_EXPORT VTKIMAGINGHYBRID_NO_EXPORT VTKIMAGINGHYBRID_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIMAGINGHYBRID_NO_DEPRECATED
#    define VTKIMAGINGHYBRID_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkImagingHybridModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKIMAGINGHYBRID_EXPORT_H */
