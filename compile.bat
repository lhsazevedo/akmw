@echo off

echo.
echo Prunning directories
echo ====================
echo.

mkdir tmp build

del /s /q tmp\

echo.
echo Compiling
echo =========
echo.

wla-z80 -i -I src -D _REV0 -o tmp/baserom_rev0.o src/baserom.asm 
wla-z80 -i -I src -D _REV1 -o tmp/baserom_rev1.o src/baserom.asm


echo.
echo Creating link files
echo ===================
echo.

@REM Make link file
echo [objects] > tmp/linkfile_rev0
echo baserom_rev0.o >> tmp/linkfile_rev0

echo [objects] > tmp/linkfile_rev1
echo baserom_rev1.o >> tmp/linkfile_rev1

del /s /q build\


echo.
echo Linking
echo =======
echo.

cd tmp
wlalink -d -S -i -b linkfile_rev0 ../build/alex-kidd-in-miracle-world-usa-europe.sms
wlalink -d -S -i -b linkfile_rev1 ../build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms
cd ..

echo.
echo Done
echo ======================
echo.
echo Expected/Actual hashes
echo If they match, your build is identical to the original ROMs :)
echo.
echo REV0:
echo 8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4
CertUtil -hashfile "build\alex-kidd-in-miracle-world-usa-europe.sms" SHA1 | find /i /v "sha1" | find /i /v "certutil"
echo.
echo REV1:
echo 6d052e0cca3f2712434efd856f733c03011be41c
CertUtil -hashfile "build\alex-kidd-in-miracle-world-usa-europe-rev-1.sms" SHA1 | find /i /v "sha1" | find /i /v "certutil"
