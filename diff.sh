xxd -c 1 -o 7 tiles.bin > tiles.hex
xxd -c 1 -o 7 src/graphics/bag_of_gold_coins_and_cloud.bin > bag_of_gold_coins_and_cloud.hex
diff -u bag_of_gold_coins_and_cloud.hex tiles.hex > diff.diff