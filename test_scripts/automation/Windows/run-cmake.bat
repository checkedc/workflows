rem Create directories and sync files

if "%BUILD_PACKAGE%"=="Yes" (
  if "%BUILDCONFIGURATION%"=="Release" (
   set EXTRA_FLAGS="-DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_INSTALL_TOOLCHAIN_ONLY=ON -DLLVM_USE_CRT_RELEASE=MT"
  ) else (
    set EXTRA_FLAGS= 
  )
) else (
	set EXTRA_FLAGS=
)

set OLD_DIR=%CD%

cd %LLVM_OBJ_DIR%

cmake -G Ninja %EXTRA_FLAGS% -DCMAKE_BUILD_TYPE=%BUILDCONFIGURATION% -DLLVM_ENABLE_PROJECTS=clang -DLLVM_INSTALL_TOOLCHAIN_ONLY=ON %BUILD_SOURCESDIRECTORY%\checkedc-llvm-project\llvm

:succeeded
  cd %OLD_DIR%
  exit /b 0

:cmdfailed
  echo.Running CMake failed
  cd %OLD_DIR%
  exit /b 1



