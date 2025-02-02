CASROOT=C:/OpenCASCADE-7.6.0-vc14-64/opencascade-7.6.0

CASROOT_INCLUDES=$${CASROOT}/inc
MY_OCCTINCDIR = $${CASROOT}/inc
MY_OCCTLIBDIR = $${CASROOT}/$${MY_PLATFORM_AND_COMPILER}/lib$${MY_BUILDTYPE}
MY_OCCTBINDIR = $${CASROOT}/$${MY_PLATFORM_AND_COMPILER}/bin$${MY_BUILDTYPE}

# direct building dependencies
INCLUDEPATH += $${MY_OCCTINCDIR}
LIBS += -L$${MY_OCCTLIBDIR}

# include DLLs into PATH, including third-party libraries like FreeImage
win32 {
  LIBS += -L$${MY_OCCTBINDIR}

  MY_THIRDROOT = "$${CASROOT}/.."
  LIBS += -L"$${MY_THIRDROOT}/freeimage-3.17.0-vc14-64/bin"
  LIBS += -L"$${MY_THIRDROOT}/freetype-2.5.5-vc14-64/bin"
  LIBS += -L"$${MY_THIRDROOT}/ffmpeg-3.3.4-64/bin"
  LIBS += -L"$${MY_THIRDROOT}/tbb_2017.0.100/bin/intel64/vc14"
}
