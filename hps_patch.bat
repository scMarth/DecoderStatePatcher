@echo off
color 0A

set exit_status=0A
cd source

for /r %%i in (*.hps) do (

	echo Converting %%~ni.hps...
	..\hcshps --fixdecstates "%%~ni.hps" "../patched/%%~ni.hps"

)

cd ..
