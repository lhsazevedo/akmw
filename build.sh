rm baserom.o
cd asm
../../wla-dx/build/binaries/wla-z80 -o baserom.o baserom.asm

rm ../outrom.sms
../../wla-dx/build/binaries/wlalink -d -r -v -s baserom.link ../outrom.sms

cd ..