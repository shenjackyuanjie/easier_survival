scoreboard players set @a trcp_axe 0
execute as @a run scoreboard players operation @s trcp_axe += @s trcp_wooden
execute as @a run scoreboard players operation @s trcp_axe += @s trcp_stone
execute as @a run scoreboard players operation @s trcp_axe += @s trcp_iron
execute as @a run scoreboard players operation @s trcp_axe += @s trcp_golden
execute as @a run scoreboard players operation @s trcp_axe += @s trcp_diamond

execute as @e[tag=acacia_log_pos] at @s run function trcp:leaves/acacia/det_pos
execute as @e[tag=birch_log_pos] at @s run function trcp:leaves/birch/det_pos
execute as @e[tag=dark_oak_log_pos] at @s run function trcp:leaves/dark_oak/det_pos
execute as @e[tag=jungle_log_pos] at @s run function trcp:leaves/jungle/det_pos
execute as @e[tag=oak_log_pos] at @s run function trcp:leaves/oak/det_pos
execute as @e[tag=spruce_log_pos] at @s run function trcp:leaves/spruce/det_pos

execute as @a[scores={trcp_axe=1..,trcp_sneak=1..}] if data entity @s SelectedItem at @s run function trcp:pre

scoreboard players set @a trcp_wooden 0
scoreboard players set @a trcp_stone 0
scoreboard players set @a trcp_iron 0
scoreboard players set @a trcp_golden 0
scoreboard players set @a trcp_diamond 0
scoreboard players set @a trcp_oak 0
scoreboard players set @a trcp_birch 0
scoreboard players set @a trcp_spruce 0
scoreboard players set @a trcp_jungle 0
scoreboard players set @a trcp_acacia 0
scoreboard players set @a trcp_dark_oak 0
scoreboard players set @a trcp_sneak 0

