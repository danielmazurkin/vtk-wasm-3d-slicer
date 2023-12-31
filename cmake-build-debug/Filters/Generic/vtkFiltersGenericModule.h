
#ifndef VTKFILTERSGENERIC_EXPORT_H
#define VTKFILTERSGENERIC_EXPORT_H

#ifdef VTKFILTERSGENERIC_STATIC_DEFINE
#  define VTKFILTERSGENERIC_EXPORT
#  define VTKFILTERSGENERIC_NO_EXPORT
#else
#  ifndef VTKFILTERSGENERIC_EXPORT
#    ifdef FiltersGeneric_EXPORTS
        /* We are building this library */
#      define VTKFILTERSGENERIC_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKFILTERSGENERIC_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKFILTERSGENERIC_NO_EXPORT
#    define VTKFILTERSGENERIC_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKFILTERSGENERIC_DEPRECATED
#  define VTKFILTERSGENERIC_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKFILTERSGENERIC_DEPRECATED_EXPORT
#  define VTKFILTERSGENERIC_DEPRECATED_EXPORT VTKFILTERSGENERIC_EXPORT VTKFILTERSGENERIC_DEPRECATED
#endif

#ifndef VTKFILTERSGENERIC_DEPRECATED_NO_EXPORT
#  define VTKFILTERSGENERIC_DEPRECATED_NO_EXPORT VTKFILTERSGENERIC_NO_EXPORT VTKFILTERSGENERIC_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSGENERIC_NO_DEPRECATED
#    define VTKFILTERSGENERIC_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersGenericModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSGENERIC_EXPORT_H */
