
#ifndef VTKCOMMONIMPLICITARRAYS_EXPORT_H
#define VTKCOMMONIMPLICITARRAYS_EXPORT_H

#ifdef VTKCOMMONIMPLICITARRAYS_STATIC_DEFINE
#  define VTKCOMMONIMPLICITARRAYS_EXPORT
#  define VTKCOMMONIMPLICITARRAYS_NO_EXPORT
#else
#  ifndef VTKCOMMONIMPLICITARRAYS_EXPORT
#    ifdef CommonImplicitArrays_EXPORTS
        /* We are building this library */
#      define VTKCOMMONIMPLICITARRAYS_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKCOMMONIMPLICITARRAYS_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKCOMMONIMPLICITARRAYS_NO_EXPORT
#    define VTKCOMMONIMPLICITARRAYS_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKCOMMONIMPLICITARRAYS_DEPRECATED
#  define VTKCOMMONIMPLICITARRAYS_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKCOMMONIMPLICITARRAYS_DEPRECATED_EXPORT
#  define VTKCOMMONIMPLICITARRAYS_DEPRECATED_EXPORT VTKCOMMONIMPLICITARRAYS_EXPORT VTKCOMMONIMPLICITARRAYS_DEPRECATED
#endif

#ifndef VTKCOMMONIMPLICITARRAYS_DEPRECATED_NO_EXPORT
#  define VTKCOMMONIMPLICITARRAYS_DEPRECATED_NO_EXPORT VTKCOMMONIMPLICITARRAYS_NO_EXPORT VTKCOMMONIMPLICITARRAYS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKCOMMONIMPLICITARRAYS_NO_DEPRECATED
#    define VTKCOMMONIMPLICITARRAYS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkCommonImplicitArraysModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKCOMMONIMPLICITARRAYS_EXPORT_H */
