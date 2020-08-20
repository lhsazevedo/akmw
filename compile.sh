# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::             WLA DX compiling batch file v3              ::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

mkdir -p tmp build

rm -f tmp/* 

echo Compiling
wla-z80 -i -Iasm -o tmp/baserom.o asm/baserom.asm

echo Creating link file
# Make link file
echo [objects] > tmp/linkfile
echo baserom.o >> tmp/linkfile

rm -f build/*

echo Linking
cd tmp
wlalink -d -S -A -i -b linkfile ../build/outrom.sms
cd ..

if cmp -l baserom.sms build/outrom.sms; then
    echo "Success!"
else
    echo "Diff :/"
fi