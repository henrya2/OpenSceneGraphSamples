if not exist "build" (
	mkdir build
)

xcopy "%~dp0\OpenSceneGraph\3rdParty\bin\*.*" "%~dp0\build\OpenSceneGraph\OpenSceneGraph-3.4.0\bin\" /y

cd build
cmake -G "Visual Studio 14 2015 Win64" ..

SET OSG_FILE_PATH="%~dp0OpenSceneGraph-Data\"

OpenSceneGraphSamples.sln

pause