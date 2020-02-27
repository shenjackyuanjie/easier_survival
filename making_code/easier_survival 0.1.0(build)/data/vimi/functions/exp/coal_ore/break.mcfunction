scoreboard players add $damage vimi 1
execute unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players add $exp vimi 10
loot give @s mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
function vimi:exp/coal_ore/det_pos
