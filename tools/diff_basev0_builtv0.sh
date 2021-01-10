xxd -c 1 -o 7 baserom_v0.sms > baserom_v0.hex
xxd -c 1 -o 7 build/alex-kidd-in-miracle-world-usa-europe.sms > builtrom_v0.hex
diff -u baserom_v0.hex builtrom_v0.hex > diff_basev0_builtv0.diff