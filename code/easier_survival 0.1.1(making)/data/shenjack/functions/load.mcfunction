scoreboard objectives add shenjackXpValue dummy
# 玩家经验值

scoreboard objectives add hp health "hp"
scoreboard objectives setdisplay list hp
# 一个用来显示生命值的小功能

spawn rates ambient 0
kill @e[type=bat]
# 清除蝙蝠，减少卡顿

scoreboard objectives add mining minecraft.used:minecraft.diamond_pickaxe "挖掘榜（钻石稿）"
scoreboard objectives setdisplay sidebar mining
# 简易的挖掘榜记录器
