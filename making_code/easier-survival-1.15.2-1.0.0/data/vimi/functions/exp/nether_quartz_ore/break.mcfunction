scoreboard players add $damage vimi 1
execute unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players add $exp vimi 35
loot give @s mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
function vimi:exp/nether_quartz_ore/det_pos
