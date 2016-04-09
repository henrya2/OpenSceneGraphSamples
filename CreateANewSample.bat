if "%1" == "" goto end

mkdir %~dp0\Samples\%1
copy %~dp0\SimpleTemplateCMakeFile\CMakeLists.txt %~dp0\Samples\%1

:end
pause