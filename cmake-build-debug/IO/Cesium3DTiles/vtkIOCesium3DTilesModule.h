
#ifndef VTKIOCESIUM3DTILES_EXPORT_H
#define VTKIOCESIUM3DTILES_EXPORT_H

#ifdef VTKIOCESIUM3DTILES_STATIC_DEFINE
#  define VTKIOCESIUM3DTILES_EXPORT
#  define VTKIOCESIUM3DTILES_NO_EXPORT
#else
#  ifndef VTKIOCESIUM3DTILES_EXPORT
#    ifdef IOCesium3DTiles_EXPORTS
        /* We are building this library */
#      define VTKIOCESIUM3DTILES_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIOCESIUM3DTILES_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIOCESIUM3DTILES_NO_EXPORT
#    define VTKIOCESIUM3DTILES_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIOCESIUM3DTILES_DEPRECATED
#  define VTKIOCESIUM3DTILES_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIOCESIUM3DTILES_DEPRECATED_EXPORT
#  define VTKIOCESIUM3DTILES_DEPRECATED_EXPORT VTKIOCESIUM3DTILES_EXPORT VTKIOCESIUM3DTILES_DEPRECATED
#endif

#ifndef VTKIOCESIUM3DTILES_DEPRECATED_NO_EXPORT
#  define VTKIOCESIUM3DTILES_DEPRECATED_NO_EXPORT VTKIOCESIUM3DTILES_NO_EXPORT VTKIOCESIUM3DTILES_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOCESIUM3DTILES_NO_DEPRECATED
#    define VTKIOCESIUM3DTILES_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOCesium3DTilesModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKIOCESIUM3DTILES_EXPORT_H */
