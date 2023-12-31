
#ifndef VTKIOCELLGRID_EXPORT_H
#define VTKIOCELLGRID_EXPORT_H

#ifdef VTKIOCELLGRID_STATIC_DEFINE
#  define VTKIOCELLGRID_EXPORT
#  define VTKIOCELLGRID_NO_EXPORT
#else
#  ifndef VTKIOCELLGRID_EXPORT
#    ifdef IOCellGrid_EXPORTS
        /* We are building this library */
#      define VTKIOCELLGRID_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIOCELLGRID_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIOCELLGRID_NO_EXPORT
#    define VTKIOCELLGRID_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIOCELLGRID_DEPRECATED
#  define VTKIOCELLGRID_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIOCELLGRID_DEPRECATED_EXPORT
#  define VTKIOCELLGRID_DEPRECATED_EXPORT VTKIOCELLGRID_EXPORT VTKIOCELLGRID_DEPRECATED
#endif

#ifndef VTKIOCELLGRID_DEPRECATED_NO_EXPORT
#  define VTKIOCELLGRID_DEPRECATED_NO_EXPORT VTKIOCELLGRID_NO_EXPORT VTKIOCELLGRID_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOCELLGRID_NO_DEPRECATED
#    define VTKIOCELLGRID_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOCellGridModule.h */

/* Include ABI Namespace */

#endif /* VTKIOCELLGRID_EXPORT_H */
