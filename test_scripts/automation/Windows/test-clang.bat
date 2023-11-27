rem Test clang in Visual Studio Team Services
rem
rem The MSBuild task in Visual Studio uses a relative path to the
rem solution file, which does not work for CMake-generated files, 
rem which should be genereated outside the source tree   So create a
rem a script and just invoke MSBuild directly.

set OLD_DIR=%CD%

cd %LLVM_OBJ_DIR%

if "%SKIP_CHECKEDC_TESTS%"=="Yes" (
  rem
) else (
  ninja -j %MSBUILD_CPU_COUNT% check-checkedc
  if ERRORLEVEL 1 (goto cmdfailed)
)

if "%TEST_SUITE%"=="CheckedC" (
  rem
) else if "%TEST_SUITE%"=="CheckedC_clang" (
    ninja -j %MSBUILD_CPU_COUNT% check-clang
) else if "%TEST_SUITE%"=="CheckedC_LLVM" (
    ninja -j %MSBUILD_CPU_COUNT% check-all
  if ERRORLEVEL 1 (goto cmdfailed)
)

:succeeded
  cd %OLD_DIR%
  exit /b 0

:cmdfailed
  echo.Clang tests failed
  cd %OLD_DIR%
  exit /b 1
confi


