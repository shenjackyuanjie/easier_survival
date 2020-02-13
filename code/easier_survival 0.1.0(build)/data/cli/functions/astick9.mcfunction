setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 255 ~ Items set from block ~ ~1 ~ Items
loot spawn ~ ~-1 ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
data remove block ~ ~1 ~ Items
