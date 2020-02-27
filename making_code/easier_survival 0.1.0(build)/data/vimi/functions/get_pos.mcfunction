execute unless block ~ ~ ~ #vimi:cross run summon minecraft:area_effect_cloud ~ ~512 ~ {Tags:["vimi_block_pos"],Duration:2}
execute if entity @s[distance=..6] if block ~ ~ ~ #vimi:cross positioned ^ ^ ^0.005 run function vimi:get_pos
