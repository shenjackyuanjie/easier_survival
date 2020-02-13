tag @s add cli_source
execute store result score #temp0 clivalue run data get block ~ ~1 ~ Items
execute if data block ~ ~1 ~ Items[] as @e[type=item_frame,distance=..20] if data entity @s Item at @s run function cli:astick2
execute store result score #temp1 clivalue run data get block ~ ~1 ~ Items
execute if score #temp0 clivalue = #temp1 clivalue run function cli:astick9
tag @s remove cli_source
