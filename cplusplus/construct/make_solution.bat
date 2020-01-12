@echo off

mkdir out

cd out

call cmake -G "Visual Studio 16 2019" -A "Win32" ../
call cmake --build .