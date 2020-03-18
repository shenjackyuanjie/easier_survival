execute positioned as @s run tag @p[tag=shenjack_mine_main] add shenjack_mine_refash
function shenjack:mine/create_diamond
execute at @e[tag=shenjack_mine_refash] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:0b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["shenjack_mine_diamond"],Rotation:[0.0f,0.0f]}