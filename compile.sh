mkdir -p tmp build

rm -f tmp/* 

echo Compiling
wla-z80 -I src -D _REV0 -o tmp/baserom_rev0.o src/baserom.asm
wla-z80 -I src -D _REV1 -o tmp/baserom_rev1.o src/baserom.asm

rm -f build/*

echo Linking
wlalink -d -S -b linkfile_rev0 build/alex-kidd-in-miracle-world-usa-europe.sms
wlalink -d -S -b linkfile_rev1 build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms


STATUS=0
if ! sha1sum --status -c <<<"8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4 *build/alex-kidd-in-miracle-world-usa-europe.sms"; then
    echo "REV0 Diff :/"
    STATUS=1
else
    echo "REV0 Ok!"
fi

if ! sha1sum --status -c <<<"6d052e0cca3f2712434efd856f733c03011be41c *build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms"; then
    echo "REV1 Diff :/"
    STATUS=1
else
    echo "REV1 Ok!"
fi

exit $STATUS
