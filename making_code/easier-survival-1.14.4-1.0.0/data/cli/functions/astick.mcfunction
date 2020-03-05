execute unless block ~ ~ ~ diamond_block run kill @s
function cli:check_power
execute as @s[tag=!cli_redstone_powered] if block ~ ~1 ~ chest if data block ~ ~1 ~ Items[] run function cli:astick1
