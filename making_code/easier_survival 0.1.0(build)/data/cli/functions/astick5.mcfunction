setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute at @e[tag=cli_source,distance=..25] run data modify entity @s HandItems[0].Count set from block ~ ~1 ~ Items[0].Count
execute at @e[tag=cli_source,distance=..25] run data modify entity @s HandItems[0].tag set from block ~ ~1 ~ Items[0].tag

data modify block ~ 255 ~ Items[0].id set from entity @s HandItems[0].id
data modify block ~ 255 ~ Items[0].Count set from entity @s HandItems[0].Count
data modify block ~ 255 ~ Items[0].tag set from entity @s HandItems[0].tag

loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
execute at @e[tag=cli_source] run data remove block ~ ~1 ~ Items[0]
