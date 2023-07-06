
#ifndef VTKFILTERSHYBRID_EXPORT_H
#define VTKFILTERSHYBRID_EXPORT_H

#ifdef VTKFILTERSHYBRID_STATIC_DEFINE
#  define VTKFILTERSHYBRID_EXPORT
#  define VTKFILTERSHYBRID_NO_EXPORT
#else
#  ifndef VTKFILTERSHYBRID_EXPORT
#    ifdef FiltersHybrid_EXPORTS
        /* We are building this library */
#      define VTKFILTERSHYBRID_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKFILTERSHYBRID_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKFILTERSHYBRID_NO_EXPORT
#    define VTKFILTERSHYBRID_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKFILTERSHYBRID_DEPRECATED
#  define VTKFILTERSHYBRID_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKFILTERSHYBRID_DEPRECATED_EXPORT
#  define VTKFILTERSHYBRID_DEPRECATED_EXPORT VTKFILTERSHYBRID_EXPORT VTKFILTERSHYBRID_DEPRECATED
#endif

#ifndef VTKFILTERSHYBRID_DEPRECATED_NO_EXPORT
#  define VTKFILTERSHYBRID_DEPRECATED_NO_EXPORT VTKFILTERSHYBRID_NO_EXPORT VTKFILTERSHYBRID_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSHYBRID_NO_DEPRECATED
#    define VTKFILTERSHYBRID_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersHybridModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSHYBRID_EXPORT_H */
