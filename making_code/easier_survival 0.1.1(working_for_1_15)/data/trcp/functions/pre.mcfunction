scoreboard players set $damage trcp 0
scoreboard players set $total trcp 0
scoreboard players set $lvl trcp 0

execute store result score $damage trcp run data get entity @s SelectedItem.tag.Damage
execute if score @s trcp_wooden matches 1.. run scoreboard players set $total trcp 59
execute if score @s trcp_stone matches 1.. run scoreboard players set $total trcp 131
execute if score @s trcp_iron matches 1.. run scoreboard players set $total trcp 250
execute if score @s trcp_golden matches 1.. run scoreboard players set $total trcp 32
execute if score @s trcp_diamond matches 1.. run scoreboard players set $total trcp 1561
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}] store result score $lvl trcp run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $lvl trcp 1
scoreboard players operation $damage trcp *= $lvl trcp


tag @e[type=item,distance=..6,nbt={Age:0s,PickupDelay:10s}] add trcp_dropped

execute if score @s trcp_oak matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:oak_log"}}] add trcp_oak
execute at @e[tag=trcp_oak] run function trcp:log/oak/det_pos
execute if score @s trcp_birch matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:birch_log"}}] add trcp_birch
execute at @e[tag=trcp_birch] run function trcp:log/birch/det_pos
execute if score @s trcp_spruce matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:spruce_log"}}] add trcp_spruce
execute at @e[tag=trcp_spruce] run function trcp:log/spruce/det_pos
execute if score @s trcp_jungle matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:jungle_log"}}] add trcp_jungle
execute at @e[tag=trcp_jungle] run function trcp:log/jungle/det_pos
execute if score @s trcp_acacia matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:acacia_log"}}] add trcp_acacia
execute at @e[tag=trcp_acacia] run function trcp:log/acacia/det_pos
execute if score @s trcp_dark_oak matches 1.. run tag @e[tag=trcp_dropped,nbt={Item:{id:"minecraft:dark_oak_log"}}] add trcp_dark_oak
execute at @e[tag=trcp_dark_oak] run function trcp:log/dark_oak/det_pos

scoreboard players operation $damage trcp /= $lvl trcp
scoreboard players operation $total trcp /= $lvl trcp
execute if score $damage trcp >= $total trcp run function trcp:item_break
execute if score $damage trcp < $total trcp store result entity @s SelectedItem.tag.Damage short 1 run scoreboard players get $damage trcp
