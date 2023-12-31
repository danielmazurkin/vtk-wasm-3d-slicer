
#ifndef VTKIOCONVERGECFD_EXPORT_H
#define VTKIOCONVERGECFD_EXPORT_H

#ifdef VTKIOCONVERGECFD_STATIC_DEFINE
#  define VTKIOCONVERGECFD_EXPORT
#  define VTKIOCONVERGECFD_NO_EXPORT
#else
#  ifndef VTKIOCONVERGECFD_EXPORT
#    ifdef IOCONVERGECFD_EXPORTS
        /* We are building this library */
#      define VTKIOCONVERGECFD_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKIOCONVERGECFD_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKIOCONVERGECFD_NO_EXPORT
#    define VTKIOCONVERGECFD_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKIOCONVERGECFD_DEPRECATED
#  define VTKIOCONVERGECFD_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIOCONVERGECFD_DEPRECATED_EXPORT
#  define VTKIOCONVERGECFD_DEPRECATED_EXPORT VTKIOCONVERGECFD_EXPORT VTKIOCONVERGECFD_DEPRECATED
#endif

#ifndef VTKIOCONVERGECFD_DEPRECATED_NO_EXPORT
#  define VTKIOCONVERGECFD_DEPRECATED_NO_EXPORT VTKIOCONVERGECFD_NO_EXPORT VTKIOCONVERGECFD_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOCONVERGECFD_NO_DEPRECATED
#    define VTKIOCONVERGECFD_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOCONVERGECFDModule.h */

/* Include ABI Namespace */

#endif /* VTKIOCONVERGECFD_EXPORT_H */
