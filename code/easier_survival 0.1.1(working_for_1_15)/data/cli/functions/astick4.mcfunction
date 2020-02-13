data modify entity @s HandItems[0].id set from entity @e[tag=cli_item_frame,limit=1] Item.id
execute at @e[tag=cli_source,distance=..25,limit=1] store result score @s clivalue run data modify entity @s HandItems[0].id set from block ~ ~1 ~ Items[0].id
execute at @e[tag=cli_source,distance=..25,limit=1] unless data block ~ ~1 ~ Items[] run scoreboard players set @s clivalue 1
execute if score @s clivalue matches 0 run function cli:astick5
kill @s
