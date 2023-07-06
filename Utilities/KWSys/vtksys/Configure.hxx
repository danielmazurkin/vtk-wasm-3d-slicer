/* Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
   file Copyright.txt or https://cmake.org/licensing#kwsys for details.  */
#ifndef _Configure_hxx
#define _Configure_hxx

/* Include C configuration.  */
#include </Configure.h>

/* Whether wstring is available.  */
#define _STL_HAS_WSTRING 
/* Whether <ext/stdio_filebuf.h> is available. */
#define _CXX_HAS_EXT_STDIO_FILEBUF_H                         \
  
/* Whether the translation map is available or not. */
#define _SYSTEMTOOLS_USE_TRANSLATION_MAP                     \
  

#if defined(__SUNPRO_CC) && __SUNPRO_CC > 0x5130 && defined(__has_attribute)
#  define _has_cpp_attribute(x) __has_attribute(x)
#elif defined(__has_cpp_attribute)
#  define _has_cpp_attribute(x) __has_cpp_attribute(x)
#else
#  define _has_cpp_attribute(x) 0
#endif

#if __cplusplus >= 201103L
#  define _NULLPTR nullptr
#else
#  define _NULLPTR 0
#endif

#ifndef _FALLTHROUGH
#  if __cplusplus >= 201703L &&                                               \
    _has_cpp_attribute(fallthrough)
#    define _FALLTHROUGH [[fallthrough]]
#  elif __cplusplus >= 201103L &&                                             \
    _has_cpp_attribute(gnu::fallthrough)
#    define _FALLTHROUGH [[gnu::fallthrough]]
#  elif __cplusplus >= 201103L &&                                             \
    _has_cpp_attribute(clang::fallthrough)
#    define _FALLTHROUGH [[clang::fallthrough]]
#  endif
#endif
#ifndef _FALLTHROUGH
#  define _FALLTHROUGH static_cast<void>(0)
#endif

#undef _has_cpp_attribute

/* If building a C++ file in kwsys itself, give the source file
   access to the macros without a configured namespace.  */
#if defined(KWSYS_NAMESPACE)
#  if !_NAME_IS_KWSYS
#    define kwsys 
#  endif
#  define KWSYS_NAME_IS_KWSYS _NAME_IS_KWSYS
#  define KWSYS_STL_HAS_WSTRING _STL_HAS_WSTRING
#  define KWSYS_CXX_HAS_EXT_STDIO_FILEBUF_H                                   \
    _CXX_HAS_EXT_STDIO_FILEBUF_H
#  define KWSYS_FALLTHROUGH _FALLTHROUGH
#  define KWSYS_SYSTEMTOOLS_USE_TRANSLATION_MAP                               \
    _SYSTEMTOOLS_USE_TRANSLATION_MAP
#endif

#endif
