vtk_add_test_cxx(vtkFiltersPointsCxxTests tests
  UnitTestKernels.cxx,NO_VALID
  TestSPHKernels.cxx,NO_VALID
  PlotSPHKernels.cxx
  TestConvertToPointCloud.cxx
  TestPointCloudFilterArrays.cxx,NO_VALID,NO_DATA
  TestPoissonDiskSampler.cxx,NO_VALID,NO_DATA
  TestPCANormalEstimationModes.cxx,NO_VALID,NO_DATA
  )
vtk_test_cxx_executable(vtkFiltersPointsCxxTests tests
  DISABLE_FLOATING_POINT_EXCEPTIONS
  RENDERING_FACTORY
  )
