for /R %%f in (*.sc) do del %%f
for /R %%f in (*.old) do ren %%f %%~nf.sc

