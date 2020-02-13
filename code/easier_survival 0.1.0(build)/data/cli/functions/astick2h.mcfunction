execute store result score @s clivalue run data get block ~ ~ ~ Items
execute if block ~ ~ ~ #cli:droppers run scoreboard players add @s clivalue 18
execute if block ~ ~ ~ hopper run scoreboard players add @s clivalue 22
execute unless block ~ ~ ~ #cli:container run scoreboard players set @s clivalue 27
execute as @s[scores={clivalue=..26}] run function cli:astick3
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=right,facing=west] positioned ~ ~ ~1 run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=right,facing=south] positioned ~1 ~ ~ run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=left,facing=east] positioned ~ ~ ~1 run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cli:astick2c
execute as @s[scores={clivalue=27..}] if block ~ ~ ~ #cli:chests[type=left,facing=north] positioned ~1 ~ ~ run function cli:astick2c
