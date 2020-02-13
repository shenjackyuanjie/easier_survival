execute if entity @s[distance=..6] unless block ~ ~ ~ diamond_block positioned ^ ^ ^0.005 anchored feet run function cli:put_diamond_block_ray
execute if entity @s[distance=..6] if block ~ ~ ~ diamond_block align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cli_diamond_block"],Rotation:[0.0f,0.0f]}

