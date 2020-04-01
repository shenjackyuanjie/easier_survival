# 矿坑问题好难啊！！！

# 先检测边上有没有其他矿坑中心
# 在生成者的脚下y=1处，生成一个盔甲架，带有tag“shenjack_mine_main”
execute at @s align xz unless entity @e[tag=shenjack_mine_main,type=armor_stand,distance=0..16] run summon armor_stand ~0.5 1 ~0.5 {Invulnerable:1b,Invisible:0b,Small:0b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["shenjack_mine_main"],Rotation:[0.0f,0.0f]}
