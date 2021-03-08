wiz -o tmp/wiz.sms src/asm/main.wiz

testBlock() {
    a=$(dd if=tmp/wiz.sms skip=$(printf "%d" $1) count=$2 bs=1 status=none | sha1sum)
    b=$(dd if=build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms skip=$(printf "%d" $1) count=$2 bs=1 status=none | sha1sum)

    if [ "$a" = "$b" ]; then
        echo Ok
    else
        echo Fail $1
        echo "Expected $b"
        echo "Got      $a"
    fi
}

# Decompress
testBlock "0x293" 49

# Monster Bird Updater
testBlock "0x5037" 80
