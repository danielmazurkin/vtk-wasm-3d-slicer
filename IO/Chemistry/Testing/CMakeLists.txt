if (NOT vtk_testing_cxx_disabled)
  add_subdirectory(Cxx)
endif ()

if (VTK_WRAP_PYTHON)
  vtk_module_test_data(
    Data/nanowireTB23K298.xyz
    Data/thio3xx.xyz
    Data/caffeine.pdb
    Data/caffeine_notrailingspaces.pdb)

  add_subdirectory(Python)
endif ()
