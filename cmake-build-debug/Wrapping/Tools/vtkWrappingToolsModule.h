
#ifndef VTKWRAPPINGTOOLS_EXPORT_H
#define VTKWRAPPINGTOOLS_EXPORT_H

#ifdef VTKWRAPPINGTOOLS_STATIC_DEFINE
#  define VTKWRAPPINGTOOLS_EXPORT
#  define VTKWRAPPINGTOOLS_NO_EXPORT
#else
#  ifndef VTKWRAPPINGTOOLS_EXPORT
#    ifdef WrappingTools_EXPORTS
        /* We are building this library */
#      define VTKWRAPPINGTOOLS_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define VTKWRAPPINGTOOLS_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKWRAPPINGTOOLS_NO_EXPORT
#    define VTKWRAPPINGTOOLS_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKWRAPPINGTOOLS_DEPRECATED
#  define VTKWRAPPINGTOOLS_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKWRAPPINGTOOLS_DEPRECATED_EXPORT
#  define VTKWRAPPINGTOOLS_DEPRECATED_EXPORT VTKWRAPPINGTOOLS_EXPORT VTKWRAPPINGTOOLS_DEPRECATED
#endif

#ifndef VTKWRAPPINGTOOLS_DEPRECATED_NO_EXPORT
#  define VTKWRAPPINGTOOLS_DEPRECATED_NO_EXPORT VTKWRAPPINGTOOLS_NO_EXPORT VTKWRAPPINGTOOLS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKWRAPPINGTOOLS_NO_DEPRECATED
#    define VTKWRAPPINGTOOLS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkWrappingToolsModule.h */

#endif /* VTKWRAPPINGTOOLS_EXPORT_H */
