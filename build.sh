rm -f baserom.o
../wla-dx/build/binaries/wla-z80 -o baserom.o asm/baserom.asm -I asm

rm -f outrom.sms
../wla-dx/build/binaries/wlalink -d -r asm/baserom.link outrom.sms

cd ..

if cmp -l baserom.sms outrom.sms; then
    echo "Success!"
else
    echo "Diff :/"
fi