#don't go for headshots
execute if score #var sab.var matches 1 run scoreboard players set #var sab.var 0

#if loaded, tp Earl based on how we're adjusting our aim
execute if score #distance sab.var matches 1 run tp e-0-0-0-1 ~ ~1 ~
execute if score #distance sab.var matches 2 run tp e-0-0-0-1 ~ ~2 ~
execute if score #distance sab.var matches 3 run tp e-0-0-0-1 ~ ~3 ~