# 统计所有记分板
scoreboard players set @a vimi_pickaxe 0
execute as @a run scoreboard players operation @s vimi_pickaxe += @s vimi_wooden
execute as @a run scoreboard players operation @s vimi_pickaxe += @s vimi_stone
execute as @a run scoreboard players operation @s vimi_pickaxe += @s vimi_iron
execute as @a run scoreboard players operation @s vimi_pickaxe += @s vimi_golden
execute as @a run scoreboard players operation @s vimi_pickaxe += @s vimi_diamond

# 如果潜行时挖掘，就探测
execute as @a[scores={vimi_pickaxe=1..,vimi_sneak=1..}] if data entity @s SelectedItem at @s run function vimi:pre

# 如果手持镐子，就获取所指的方块位置
execute as @a[scores={vimi_sneak=1..},nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] at @s positioned ~ ~1.62 ~ run function vimi:get_pos
execute as @a[scores={vimi_sneak=1..},nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] at @s positioned ~ ~1.62 ~ run function vimi:get_pos
execute as @a[scores={vimi_sneak=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s positioned ~ ~1.62 ~ run function vimi:get_pos
execute as @a[scores={vimi_sneak=1..},nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s positioned ~ ~1.62 ~ run function vimi:get_pos
execute as @a[scores={vimi_sneak=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s positioned ~ ~1.62 ~ run function vimi:get_pos

# 记分板清零
scoreboard players set @a vimi_wooden 0
scoreboard players set @a vimi_stone 0
scoreboard players set @a vimi_iron 0
scoreboard players set @a vimi_golden 0
scoreboard players set @a vimi_diamond 0
scoreboard players set @a vimi_coal_ore 0
scoreboard players set @a vimi_diamond_ore 0
scoreboard players set @a vimi_emerald_ore 0
scoreboard players set @a vimi_gold_ore 0
scoreboard players set @a vimi_iron_ore 0
scoreboard players set @a vimi_lapis_ore 0
scoreboard players set @a vimi_quartz_ore 0
scoreboard players set @a vimi_rs_ore 0
scoreboard players set @a vimi_sneak 0

