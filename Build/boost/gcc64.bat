set OLDCD=%CD%
pushd %BOOST_ROOT%
set OLDPATH=%PATH%
set PATH=%MINGW64%;%MINGW64%\bin\;%PATH%
b2 -j %NUMBER_OF_PROCESSORS% toolset=gcc cxxflags=-std=c++11 address-model=64 architecture=x86 --stagedir=stage/gcc-x64 link=static runtime-link=static threading=multi debug-symbols=on define=WINVER=_WIN32_WINNT_VISTA define=_WIN32_WINNT=_WIN32_WINNT_VISTA stage > %OLDCD%\gcc64.txt
set PATH=%OLDPATH%
popd
