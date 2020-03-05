execute unless block ~ ~ ~ light_blue_stained_glass run kill @s
execute unless block ~ ~1 ~ chest run kill @s
function cli:check_power
execute as @s[tag=!cli_redstone_powered] if block ~ ~1 ~ chest if data block ~ ~1 ~ Items[] run function cli:astick1