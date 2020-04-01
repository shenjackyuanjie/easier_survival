scoreboard objectives add shenjackXpValue dummy
# 玩家经验值

scoreboard objectives add hp health "hp"
scoreboard objectives setdisplay list hp
# 一个用来显示生命值的小功能

spawn rates ambient 0
kill @e[type=bat]
# 清除蝙蝠，减少卡顿
#
