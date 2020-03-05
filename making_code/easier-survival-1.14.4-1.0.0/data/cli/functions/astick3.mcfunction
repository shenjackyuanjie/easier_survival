tag @s add cli_item_frame
summon armor_stand ~ 255 ~ {Tags:["cli_store_id"],HandItems:[{id:"minecraft:bedrock",Count:1b},{}]}
execute as @e[type=armor_stand,tag=cli_store_id,limit=1] run function cli:astick4
tag @s remove cli_item_frame


