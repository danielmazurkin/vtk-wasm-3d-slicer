
#ifndef VTKFILTERSTEXTURE_EXPORT_H
#define VTKFILTERSTEXTURE_EXPORT_H

#ifdef VTKFILTERSTEXTURE_STATIC_DEFINE
#  define VTKFILTERSTEXTURE_EXPORT
#  define VTKFILTERSTEXTURE_NO_EXPORT
#else
#  ifndef VTKFILTERSTEXTURE_EXPORT
#    ifdef FiltersTexture_EXPORTS
        /* We are building this library */
#      define VTKFILTERSTEXTURE_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKFILTERSTEXTURE_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKFILTERSTEXTURE_NO_EXPORT
#    define VTKFILTERSTEXTURE_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKFILTERSTEXTURE_DEPRECATED
#  define VTKFILTERSTEXTURE_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKFILTERSTEXTURE_DEPRECATED_EXPORT
#  define VTKFILTERSTEXTURE_DEPRECATED_EXPORT VTKFILTERSTEXTURE_EXPORT VTKFILTERSTEXTURE_DEPRECATED
#endif

#ifndef VTKFILTERSTEXTURE_DEPRECATED_NO_EXPORT
#  define VTKFILTERSTEXTURE_DEPRECATED_NO_EXPORT VTKFILTERSTEXTURE_NO_EXPORT VTKFILTERSTEXTURE_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSTEXTURE_NO_DEPRECATED
#    define VTKFILTERSTEXTURE_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersTextureModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSTEXTURE_EXPORT_H */
