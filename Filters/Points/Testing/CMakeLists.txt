if (NOT vtk_testing_cxx_disabled)
  add_subdirectory(Cxx)
endif ()

if (VTK_WRAP_PYTHON)
  vtk_module_test_data(
    Data/SPH_Points.vtu
    Data/SPH_Points2D.vtu
    Data/SainteHelens.dem
    Data/combq.bin
    Data/combxyz.bin)

  add_subdirectory(Python)
endif ()
