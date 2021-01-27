function shenjack:load_script

say 欢迎来到HWS服务器！

# scoreboard objectives add shenjackXpValue dummy
# 玩家经验值

spawn rates ambient 0
kill @e[type=bat]
# 清除蝙蝠，减少卡顿