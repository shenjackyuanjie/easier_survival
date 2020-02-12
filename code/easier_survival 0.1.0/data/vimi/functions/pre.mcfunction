# 初始化所有变量
scoreboard players set $damage vimi 0
scoreboard players set $total vimi 0
scoreboard players set $lvl vimi 0

# 计算初始耐久
execute store result score $damage vimi run data get entity @s SelectedItem.tag.Damage
execute if score @s vimi_wooden matches 1.. run scoreboard players set $total vimi 59
execute if score @s vimi_stone matches 1.. run scoreboard players set $total vimi 131
execute if score @s vimi_iron matches 1.. run scoreboard players set $total vimi 250
execute if score @s vimi_golden matches 1.. run scoreboard players set $total vimi 32
execute if score @s vimi_diamond matches 1.. run scoreboard players set $total vimi 1561
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}] store result score $lvl vimi run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $lvl vimi 1
scoreboard players operation $damage vimi *= $lvl vimi

# 判断方块种类
execute if score @s vimi_coal_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/coal_ore/det_pos
execute if score @s vimi_diamond_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/diamond_ore/det_pos
execute if score @s vimi_emerald_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/emerald_ore/det_pos
execute if score @s vimi_gold_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/gold_ore/det_pos
execute if score @s vimi_iron_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/iron_ore/det_pos
execute if score @s vimi_lapis_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/lapis_ore/det_pos
execute if score @s vimi_quartz_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/nether_quartz_ore/det_pos
execute if score @s vimi_rs_ore matches 1.. at @e[tag=vimi_block_pos] positioned ~ ~-512 ~ run function vimi:exp/redstone_ore/det_pos

# 播放捡起物品的音效（让玩家有获得感）
execute if score $damage vimi matches 1.. run playsound minecraft:entity.item.pickup player @s

# 处理耐久
scoreboard players operation $damage vimi /= $lvl vimi
scoreboard players operation $total vimi /= $lvl vimi
execute if score $damage vimi >= $total vimi run function vimi:item_break
execute if score $damage vimi < $total vimi store result entity @s SelectedItem.tag.Damage short 1 run scoreboard players get $damage vimi

# 处理经验
execute if score $exp vimi matches 10.. run summon minecraft:experience_orb ~ ~ ~ {Tags:["vimi_xp"]}
execute store result entity @e[tag=vimi_xp,limit=1] Value short 0.1 run scoreboard players get $exp vimi
scoreboard players operation $exp vimi %= $10 vimi


