scoreboard players set #multiplier sab.var 130
scoreboard players operation #x2 sab.var *= #multiplier sab.var
scoreboard players operation #z2 sab.var *= #multiplier sab.var
scoreboard players operation #x2 sab.var /= #100 sab.var
scoreboard players operation #z2 sab.var /= #100 sab.var

#we've been sprinting!
scoreboard players set @s sab.botIsSprinting 2

#show running particles?
execute at @s positioned ^ ^ ^-.5 run particle block{block_state:black_wool} ~ ~.1 ~ 0.25 0.05 0.25 1 1