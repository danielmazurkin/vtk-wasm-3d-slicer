/* config.h.in.  Generated from configure.ac by autoheader.  */

#include "vtk_netcdf_mangle.h"

/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* If true, will attempt to download and build netcdf-fortran. */
/* #undef BUILD_FORTRAN */

/* default file chunk cache nelems. */
#define CHUNK_CACHE_NELEMS 1009

/* default file chunk cache preemption policy. */
#define CHUNK_CACHE_PREEMPTION 0.75

/* default file chunk cache size in bytes. */
#define CHUNK_CACHE_SIZE 4194304

/* default nczarr chunk cache size. */
#undef CHUNK_CACHE_SIZE_NCZARR

/* Define to 1 if using 'alloca.c'. */
/* #undef C_ALLOCA */

/* num chunks in default per-var chunk cache. */
#define DEFAULT_CHUNKS_IN_CACHE 10

/* default chunk size in bytes */
#define DEFAULT_CHUNK_SIZE 4194304

/* If true, enable nc_finalize via atexit() */
#undef ENABLE_ATEXIT_FINALIZE

/* if true, support byte-range read of remote datasets. */
/* #undef ENABLE_BYTERANGE */

/* if true, enable CDF5 Support */
/* #undef ENABLE_CDF5 */

/* if true, build DAP Client */
/* #undef ENABLE_DAP */

/* if true, build DAP4 Client */
/* #undef ENABLE_DAP4 */

/* if true, do remote tests */
/* #undef ENABLE_DAP_REMOTE_TESTS */

/* if true, do remote external tests */
#undef ENABLE_EXTERNAL_SERVER_TESTS

/* if true, support byte-range using hdf5 virtual file driver. */
#undef ENABLE_HDF5_ROS3

/* if true, build NCZarr Client */
#undef ENABLE_NCZARR

/* if true, enable NCZarr filters */
#undef ENABLE_NCZARR_FILTERS

/* if true, build libnczarr with S3 tests enabled */
#undef ENABLE_NCZARR_S3_TESTS

/* If true, then libzip found */
#undef ENABLE_NCZARR_ZIP

/* if true, support dynamically loaded plugins */
#undef ENABLE_PLUGINS

/* if true, enable quantize support */
#undef ENABLE_QUANTIZE

/* if true, build netcdf-c with S3 support enabled */
#undef ENABLE_S3

/* If true, then S3 sdk was found */
#undef ENABLE_S3_SDK

/* If true, define nc_set_log_level. */
/* #undef ENABLE_SET_LOG_LEVEL */

/* if true, use _FillValue for NC_ERANGE data elements */
/* #undef ERANGE_FILL */

/* use HDF5 1.6 API */
#define H5_USE_16_API

/* if true, multi-filter support enabled */
#undef HAS_MULTIFILTERS

/* Define to 1 if you have 'alloca', as a function or macro. */
#define HAVE_ALLOCA

/* Define to 1 if <alloca.h> works. */
#define HAVE_ALLOCA_H

/* Define to 1 if you have the `atexit' function. */
#undef HAVE_ATEXIT

/* if true, blosc library is available */
#undef HAVE_BLOSC

/* if true, bz2 library is installed */
#undef HAVE_BZ2

/* Define to 1 if you have the `clock_gettime' function. */
#undef HAVE_CLOCK_GETTIME

/* Define to 1 if you have the <ctype.h> header file. */
#undef HAVE_CTYPE_H

/* Is CURLINFO_RESPONSE_CODE defined */
/* #undef HAVE_CURLINFO_RESPONSE_CODE */

/* Is CURLOPT_BUFFERSIZE defined */
/* #undef HAVE_CURLOPT_BUFFERSIZE */

/* Is CURLOPT_TCP_KEEPALIVE defined */
/* #undef HAVE_CURLOPT_KEEPALIVE */

/* Is CURLOPT_KEYPASSWD defined */
/* #undef HAVE_CURLOPT_KEYPASSWD */

/* Is CURLOPT_PASSWORD defined */
/* #undef HAVE_CURLOPT_PASSWORD */

/* Is CURLOPT_USERNAME defined */
/* #undef HAVE_CURLOPT_USERNAME */

/* Define to 1 if you have the declaration of `isfinite', and to 0 if you
   don't. */
#define HAVE_DECL_ISFINITE

/* Define to 1 if you have the declaration of `isinf', and to 0 if you don't.
   */
#define HAVE_DECL_ISINF

/* Define to 1 if you have the declaration of `isnan', and to 0 if you don't.
   */
#define HAVE_DECL_ISNAN

/* Define to 1 if you have the <dirent.h> header file. */
#undef HAVE_DIRENT_H

/* Define to 1 if you have the <dlfcn.h> header file. */
#undef HAVE_DLFCN_H

/* Define to 1 if you have the <execinfo.h> header file. */
#undef HAVE_EXECINFO_H

/* Define to 1 if you have the <fcntl.h> header file. */
#define HAVE_FCNTL_H

/* Define to 1 if you have the '_filelengthi64' function. */
/* #undef HAVE_FILE_LENGTH_I64 */

/* Define to 1 if you have the `fileno' function. */
#undef HAVE_FILENO

/* Define to 1 if you have the `fsync' function. */
#define HAVE_FSYNC

/* Define to 1 if you have the <ftw.h> header file. */
/* #undef HAVE_FTW_H */

/* Define to 1 if you have the <getopt.h> header file. */
/* #undef HAVE_GETOPT_H */

/* Define to 1 if you have the `getpagesize' function. */
#define HAVE_GETPAGESIZE

/* Define to 1 if you have the `getrlimit' function. */
#define HAVE_GETRLIMIT

/* Define to 1 if you have the `gettimeofday' function. */
/* #undef HAVE_GETTIMEOFDAY */

/* Define to 1 if you have the `H5Literate' function. */
#undef HAVE_H5LITERATE

/* Define to 1 if you have the `H5Pget_fapl_mpio' function. */
#undef HAVE_H5PGET_FAPL_MPIO

/* Define to 1 if you have the `H5Pset_all_coll_metadata_ops' function. */
#undef HAVE_H5PSET_ALL_COLL_METADATA_OPS

/* Define to 1 if you have the `H5Pset_deflate' function. */
#undef HAVE_H5PSET_DEFLATE

/* if true, compile in szip compression in netCDF-4 variables */
#undef HAVE_H5Z_SZIP

/* Define to 1 if you have the <hdf5.h> header file. */
#define HAVE_HDF5_H

/* Define to 1 if the system has the type `int64'. */
/* #undef HAVE_INT64 */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H

/* Is libcurl version 7.66 or later */
#undef HAVE_LIBCURL_766

/* Define to 1 if you have the `df' library (-ldf). */
/* #undef HAVE_LIBDF */

/* Define to 1 if you have the <libgen.h> header file. */
/* #undef HAVE_LIBGEN_H */

/* Define to 1 if you have the `jpeg' library (-ljpeg). */
/* #undef HAVE_LIBJPEG */

/* Define to 1 if you have the `m' library (-lm). */
/* #undef HAVE_LIBM */

/* Define to 1 if you have the `mfhdf' library (-lmfhdf). */
/* #undef HAVE_LIBMFHDF */

/* Define to 1 if you have the `pnetcdf' library (-lpnetcdf). */
/* #undef HAVE_LIBPNETCDF */

/* if true, use libxml2 */
#undef HAVE_LIBXML2

/* Define to 1 if you have the <locale.h> header file. */
/* #undef HAVE_LOCALE_H */

/* Define to 1 if the system has the type `longlong'. */
/* #undef HAVE_LONGLONG */

/* Define to 1 if the system has the type `long long int'. */
#define HAVE_LONG_LONG_INT

/* Define to 1 if you have the <malloc.h> header file. */
#define HAVE_MALLOC_H

/* Define to 1 if you have the `memmove' function. */
#define HAVE_MEMMOVE

/* Define to 1 if you have the <mfhdf.h> header file. */
#undef HAVE_MFHDF_H

/* Define to 1 if you have the `mkstemp' function. */
#define HAVE_MKSTEMP

/* Define to 1 if you have the `mktemp' function. */
#undef HAVE_MKTEMP

/* Define to 1 if you have the `mmap' function. */
#define HAVE_MMAP

/* Define to 1 if you have the `MPI_Comm_f2c' function. */
/* #undef HAVE_MPI_COMM_F2C */

/* Define to 1 if you have the `MPI_Info_f2c' function. */
/* #undef HAVE_MPI_INFO_F2C */

/* Define to 1 if you have the `mremap' function. */
/* #undef HAVE_MREMAP */

/* Define to 1 if the system has the type `ptrdiff_t'. */
#define HAVE_PTRDIFF_T

/* Define to 1 if you have the `random' function. */
#define HAVE_RANDOM

/* Define to 1 if the system has the type `schar'. */
#undef HAVE_SCHAR

/* Define to 1 if the system has the type `size64_t'. */
#undef HAVE_SIZE64_T

/* Define to 1 if the system has the type `size_t'. */
#undef HAVE_SIZE_T

/* Define to 1 if you have the `snprintf' function. */
#define HAVE_SNPRINTF

/* Define to 1 if the system has the type `ssize64_t'. */
#undef HAVE_SSIZE64_T

/* Define to 1 if the system has the type `ssize_t'. */
#define HAVE_SSIZE_T

/* Define to 1 if you have the <stdarg.h> header file. */
#define HAVE_STDARG_H

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H

/* Define to 1 if you have the <stdio.h> header file. */
#define HAVE_STDIO_H

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H

/* Define to 1 if you have the `strcasecmp' function. */
#undef HAVE_STRCASECMP

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H

/* Define to 1 if you have the `strlcat' function. */
/* #undef HAVE_STRLCAT */

/* Define to 1 if you have the `strndup' function. */
#define HAVE_STRNDUP

/* Define to 1 if you have the `strncasecmp' function. */
#undef HAVE_STRNCASECMP

/* Define to 1 if you have the `strtoll' function. */
/* #undef HAVE_STRTOLL */

/* Define to 1 if you have the `strtoull' function. */
/* #undef HAVE_STRTOULL */

/* Define to 1 if `st_blksize' is a member of `struct stat'. */
/* #undef HAVE_STRUCT_STAT_ST_BLKSIZE */

/* Define to 1 if the system has the type `struct timespec'. */
#undef HAVE_STRUCT_TIMESPEC

/* Define to 1 if your `struct stat' has `st_blksize'. Deprecated, use
   `HAVE_STRUCT_STAT_ST_BLKSIZE' instead. */
#undef HAVE_ST_BLKSIZE

/* Define to 1 if you have the `sysconf' function. */
#define HAVE_SYSCONF

/* Define to 1 if you have the <sys/param.h> header file. */
#define HAVE_SYS_PARAM_H

/* Define to 1 if you have the <sys/resource.h> header file. */
#define HAVE_SYS_RESOURCE_H

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H

/* if true, libsz (==szip) is available */
#undef HAVE_SZ

/* Define to 1 if you have the <time.h> header file. */
#undef HAVE_TIME_H

/* Define to 1 if the system has the type `uchar'. */
/* #undef HAVE_UCHAR */

/* Define to 1 if the system has the type `uint'. */
#define HAVE_UINT

/* Define to 1 if the system has the type `uint64'. */
#undef HAVE_UINT64

/* Define to 1 if the system has the type `uint64_t'. */
#define HAVE_UINT64_T

/* Define to 1 if the system has the type `uintptr_t'. */
#define HAVE_UINTPTR_T

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H

/* Define to 1 if the system has the type `unsigned long long int'. */
#undef HAVE_UNSIGNED_LONG_LONG_INT

/* Define to 1 if the system has the type `ushort'. */
#define HAVE_USHORT

/* if true, zstd library is available */
#undef HAVE_ZSTD

/* Define to 1 if you have the <zstd.h> header file. */
#undef HAVE_ZSTD_H

/* Define to 1 if the system has the type `_off64_t'. */
#undef HAVE__OFF64_T

/* if true, use collective metadata ops in parallel netCDF-4 */
/* #undef HDF5_HAS_COLL_METADATA_OPS */

/* if true, hdf5 has parallelism enabled */
/* #undef HDF5_PARALLEL */

/* if true, HDF5 is at least version 1.10.3 and allows parallel I/O with zip
   */
#undef HDF5_SUPPORTS_PAR_FILTERS

/* if true, HDF5 paths can be utf-8 */
/* #undef HDF5_UTF8_PATHS */

/* if true, include jna bug workaround code */
#define JNA

/* do large file tests */
/* #undef LARGE_FILE_TESTS */

/* If true, turn on logging. */
/* #undef LOGGING */

/* Define to the sub-directory where libtool stores uninstalled libraries. */
/* #undef LT_OBJDIR */

/* max size of the default per-var chunk cache. */
#define MAX_DEFAULT_CACHE_SIZE 67108864

/* min blocksize for posixio. */
#define NCIO_MINBLOCKSIZE 256

/* Extra pairs for _NCProperties */
/* #undef NCPROPERTIES_EXTRA */

/* Dispatch table version. */
/* #undef NC_DISPATCH_VERSION */

/* no IEEE float on this platform */
/* #undef NO_IEEE_FLOAT */

/* do not build the netCDF version 2 API */
#define NO_NETCDF_2

/* Name of package */
/* #undef PACKAGE */

/* Define to the address where bug reports for this package should be sent. */
/* #undef PACKAGE_BUGREPORT */

/* Define to the full name of this package. */
/* #undef PACKAGE_NAME */

/* Define to the full name and version of this package. */
/* #undef PACKAGE_STRING */

/* Define to the one symbol short name of this package. */
/* #undef PACKAGE_TARNAME */

/* Define to the home page for this package. */
/* #undef PACKAGE_URL */

/* Define to the version of this package. */
#define PACKAGE_VERSION "4.9.2"

/* if true, NC_EINVALCOORDS check is more relaxed */
/* #undef RELAX_COORD_BOUND */

/* dreg.c usable */
/* #undef REGEDIT */

/* the testservers for remote tests. */
/* #undef REMOTETESTSERVERS */

/* The size of `double', as computed by sizeof. */
#define SIZEOF_DOUBLE 8

/* The size of `float', as computed by sizeof. */
#define SIZEOF_FLOAT 4

/* The size of `int', as computed by sizeof. */
#define SIZEOF_INT 4

/* The size of `long', as computed by sizeof. */
#define SIZEOF_LONG 8

/* The size of `long long', as computed by sizeof. */
#define SIZEOF_LONG_LONG 8

/* The size of `off_t', as computed by sizeof. */
#define SIZEOF_OFF_T 8

/* The size of `short', as computed by sizeof. */
#define SIZEOF_SHORT 2

/* The size of `size_t', as computed by sizeof. */
#define SIZEOF_SIZE_T 8

/* The size of `ssize_t', as computed by sizeof. */
#undef SIZEOF_SSIZE_T

/* The size of `uchar', as computed by sizeof. */
/* #undef SIZEOF_UCHAR */

/* The size of `uint', as computed by sizeof. */
#define SIZEOF_UINT 4

/* The size of `unsigned char', as computed by sizeof. */
#define SIZEOF_UNSIGNED_CHAR 1

/* The size of `unsigned int', as computed by sizeof. */
#define SIZEOF_UNSIGNED_INT 4

/* The size of `unsigned long long', as computed by sizeof. */
#define SIZEOF_UNSIGNED_LONG_LONG 8

/* The size of `unsigned short int', as computed by sizeof. */
#define SIZEOF_UNSIGNED_SHORT_INT 2

/* The size of `ushort', as computed by sizeof. */
#define SIZEOF_USHORT 2

/* The size of `void*', as computed by sizeof. */
#define SIZEOF_VOIDP 8

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
#undef STACK_DIRECTION

/* Define to 1 if all of the C90 standard headers exist (not just the ones
   required in a freestanding environment). This macro is provided for
   backward compatibility; new code need not use it. */
#undef STDC_HEADERS

/* Place to put very large netCDF test files. */
/* #undef TEMP_LARGE */

/* dispatch table for user-defined format 0. */
/* #undef UDF0_DISPATCH */

/* function to get dispatch table for user-defined format 0. */
/* #undef UDF0_DISPATCH_FUNC */

/* dispatch table for user-defined format 1. */
/* #undef UDF1_DISPATCH */

/* function to get dispatch table for user-defined format 1. */
/* #undef UDF1_DISPATCH_FUNC */

/* if true, build DAP Client */
/* #undef USE_DAP */

/* set this to use extreme numbers in tests */
/* #undef USE_EXTREME_NUMBERS */

/* if true, use ffio instead of posixio */
/* #undef USE_FFIO */

/* if true, include experimental fsync code */
/* #undef USE_FSYNC */

/* if true, use HDF4 too */
/* #undef USE_HDF4 */

/* If true, use use wget to fetch some sample HDF4 data, and then test against
   it. */
/* #undef USE_HDF4_FILE_TESTS */

/* if true, use HDF5 */
#define USE_HDF5

/* if true, use mmap for in-memory files */
/* #undef USE_MMAP */

/* if true, build netCDF-4 */
#define USE_NETCDF4

/* build the netCDF version 2 API */
/* #undef USE_NETCDF_2 */

/* if true, PnetCDF or parallel netcdf-4 is in use */
/* #undef USE_PARALLEL */

/* if true, parallel netcdf-4 is in use */
/* #undef USE_PARALLEL4 */

/* if true, PnetCDF is used */
/* #undef USE_PNETCDF */

/* if true, use stdio instead of posixio */
/* #undef USE_STDIO */

/* if true, enable strict null byte header padding */
#undef USE_STRICT_NULL_BYTE_HEADER_PADDING

/* if true, use user-defined format 0 in utilities */
/* #undef USE_UDF0 */

/* if true, use user-defined format 1 in utilities */
/* #undef USE_UDF1 */

/* Version number of package */
#define VERSION

/* windows version build */
#undef WINVERBUILD

/* windows version major */
#undef WINVERMAJOR

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
#  undef WORDS_BIGENDIAN
# endif
#endif

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define for large files, on AIX-style hosts. */
/* #undef _LARGE_FILES */

/* Define to 1 if type `char' is unsigned and your compiler does not
   predefine this macro.  */
#ifndef __CHAR_UNSIGNED__
# undef __CHAR_UNSIGNED__
#endif

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `long int' if <sys/types.h> does not define. */
/* #undef off_t */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

/* Define to the type of an unsigned integer type wide enough to hold a
   pointer, if such a type exists, and if the system does not define it. */
/* #undef uintptr_t */

#include "ncconfigure.h"
