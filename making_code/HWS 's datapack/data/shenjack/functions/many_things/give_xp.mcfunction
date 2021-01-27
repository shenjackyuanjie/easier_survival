execute store result score @s shenjackXpValue run xp query @s points
# 将现在的经验值变量刷新

execute at @a[level=2..] run tag @s add shenjack_add_xp_bottle
# 把可以给附魔之瓶的玩家tag

give @a[tag=shenjack_add_xp_bottle] minecraft:exp_bottle 1
xp add @a[tag=shenjack_add_xp_bottle] -9
tag @a[tag=shenjack_add_xp_bottle] remove shenjack_add_xp_bottle
# 给附魔之瓶 消经验 消tag