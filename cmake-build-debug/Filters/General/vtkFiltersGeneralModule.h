
#ifndef VTKFILTERSGENERAL_EXPORT_H
#define VTKFILTERSGENERAL_EXPORT_H

#ifdef VTKFILTERSGENERAL_STATIC_DEFINE
#  define VTKFILTERSGENERAL_EXPORT
#  define VTKFILTERSGENERAL_NO_EXPORT
#else
#  ifndef VTKFILTERSGENERAL_EXPORT
#    ifdef FiltersGeneral_EXPORTS
        /* We are building this library */
#      define VTKFILTERSGENERAL_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKFILTERSGENERAL_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKFILTERSGENERAL_NO_EXPORT
#    define VTKFILTERSGENERAL_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKFILTERSGENERAL_DEPRECATED
#  define VTKFILTERSGENERAL_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKFILTERSGENERAL_DEPRECATED_EXPORT
#  define VTKFILTERSGENERAL_DEPRECATED_EXPORT VTKFILTERSGENERAL_EXPORT VTKFILTERSGENERAL_DEPRECATED
#endif

#ifndef VTKFILTERSGENERAL_DEPRECATED_NO_EXPORT
#  define VTKFILTERSGENERAL_DEPRECATED_NO_EXPORT VTKFILTERSGENERAL_NO_EXPORT VTKFILTERSGENERAL_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSGENERAL_NO_DEPRECATED
#    define VTKFILTERSGENERAL_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersGeneralModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSGENERAL_EXPORT_H */
