set(DGTAL_TESTS_SRC_IO_READERS
       testPNMReader
       testVolReader
       testRawReader
       testGenericReader
       testPointListReader
       testTableReader
       testMeshReader
       testMPolynomialReader )


foreach(FILE ${DGTAL_TESTS_SRC_IO_READERS})
  DGtal_add_test(${FILE})
endforeach()


if(MAGICK++_FOUND)

  set(DGTAL_TESTS_SRC_IO_READERS_Magick
    testMagickReader
    )

  foreach(FILE ${DGTAL_TESTS_SRC_IO_READERS_Magick})
    DGtal_add_test(${FILE})
  endforeach()

endif()


if(HDF5_FOUND)

  set(DGTAL_TESTS_SRC_IO_READERS_HDF5
    testHDF5Reader
    )

  foreach(FILE ${DGTAL_TESTS_SRC_IO_READERS_HDF5})
    DGtal_add_test(${FILE})
  endforeach()

endif()

if(ITK_FOUND)

  set(DGTAL_TESTS_SRC_IO_READERS_DICOM
    testDicomReader
    testITKReader
    testITKDicomReader
  )

  foreach(FILE ${DGTAL_TESTS_SRC_IO_READERS_DICOM})
    DGtal_add_test(${FILE})
  endforeach()

endif()
