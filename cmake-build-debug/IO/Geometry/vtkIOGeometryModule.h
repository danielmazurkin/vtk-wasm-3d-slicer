
#ifndef VTKIOGEOMETRY_EXPORT_H
#define VTKIOGEOMETRY_EXPORT_H

#ifdef VTKIOGEOMETRY_STATIC_DEFINE
#  define VTKIOGEOMETRY_EXPORT
#  define VTKIOGEOMETRY_NO_EXPORT
#else
#  ifndef VTKIOGEOMETRY_EXPORT
#    ifdef IOGeometry_EXPORTS
        /* We are building this library */
#      define VTKIOGEOMETRY_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIOGEOMETRY_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIOGEOMETRY_NO_EXPORT
#    define VTKIOGEOMETRY_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIOGEOMETRY_DEPRECATED
#  define VTKIOGEOMETRY_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIOGEOMETRY_DEPRECATED_EXPORT
#  define VTKIOGEOMETRY_DEPRECATED_EXPORT VTKIOGEOMETRY_EXPORT VTKIOGEOMETRY_DEPRECATED
#endif

#ifndef VTKIOGEOMETRY_DEPRECATED_NO_EXPORT
#  define VTKIOGEOMETRY_DEPRECATED_NO_EXPORT VTKIOGEOMETRY_NO_EXPORT VTKIOGEOMETRY_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOGEOMETRY_NO_DEPRECATED
#    define VTKIOGEOMETRY_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOGeometryModule.h */

/* Include ABI Namespace */

/* AutoInit implementations. */
#ifdef vtkIOGeometry_AUTOINIT_INCLUDE
#include vtkIOGeometry_AUTOINIT_INCLUDE
#endif
#ifdef vtkIOGeometry_AUTOINIT
#include "vtkAutoInit.h"
VTK_MODULE_AUTOINIT(vtkIOGeometry)
#endif

#endif /* VTKIOGEOMETRY_EXPORT_H */
