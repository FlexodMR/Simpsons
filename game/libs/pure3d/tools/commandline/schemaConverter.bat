for /R %%f in (*.sc) do perl jeeves\jeeves -I jeeves -t Tool_Schema_Converter.tpl -s Tool_Schema %%f -o %%~pf/%%~nf.nsc
for /R %%f in (*.sc) do ren %%f %%~nf.old
for /R %%f in (*.nsc) do ren %%f %%~nf.sc