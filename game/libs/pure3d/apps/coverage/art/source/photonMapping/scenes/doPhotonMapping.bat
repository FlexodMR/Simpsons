rem Alex Kew
rem Beginning of April, 2002
rem 
rem Modified from batch file created by Harold Westlund for r16 Photon Map coverage test
rem
rem Note:  This is an Exporter post process script.  No relative paths should
rem        be specified in this script as they may behave erratically with the
rem        current Exporter version (v16.14).


set p3dFile=%1

rem Create the photon map without photon mesh.  This is the normal usage of p3dphotonmap
p3dphotonmap.exe -v -N 100000 %p3dFile%
p3dunishader.exe %p3dFile%

rem Create the light map ------------------------------------------------------------------------
rem options used:
rem   -l, --lightmap                       Create light map for geometry
rem   -p, --photonmap                      Use the photon map
rem   -e, --exposure value                 Modify the exposure of the scene (default=0.0).
rem   -a, --area-sampling-radius radius    Set the maximum radius of the sampling sphere.
rem   -A, --area-sampling-max-count count  Set the maximum count of the sampling sphere.
rem   -f, --filter                         Filter the light map
rem %p3dlight% -h

p3dlight.exe -v -l -p -e -17.5 -a .5 -A 500 -w 32 -t 32 -f %p3dFile%

rem remove the photon chunk from the .p3d file as it is not needed, and ~8 mb
p3ddel.exe -d 13005 %p3dFile%

goto end

:end
