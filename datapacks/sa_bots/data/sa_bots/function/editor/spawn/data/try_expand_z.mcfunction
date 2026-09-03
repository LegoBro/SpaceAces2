#-----------------------
#expand from size 0
execute if score #test sab.var matches 0 \
    at @s positioned ~ ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 1

execute if score #test sab.var matches 0 if score #z sab.var matches 1 \
    at @s positioned ~ ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 2

execute if score #test sab.var matches 0 if score #z sab.var matches 2 \
    at @s positioned ~ ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 3

execute if score #test sab.var matches 0 if score #z sab.var matches 3 \
    at @s positioned ~ ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 4

execute if score #test sab.var matches 0 if score #z sab.var matches 4 \
    at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 5



#-----------------------
#expand from size 1
execute if score #test sab.var matches 1 \
    at @s positioned ~-1 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 2

execute if score #test sab.var matches 1 if score #z sab.var matches 2 \
    at @s positioned ~-1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 3

execute if score #test sab.var matches 1 if score #z sab.var matches 3 \
    at @s positioned ~-1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 4

execute if score #test sab.var matches 1 if score #z sab.var matches 4 \
    at @s positioned ~-1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 5

execute if score #test sab.var matches 1 if score #z sab.var matches 5 \
    at @s positioned ~-1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 6

execute if score #test sab.var matches 1 if score #z sab.var matches 6 \
    at @s positioned ~-1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 7



#-----------------------
#expand from size 2
execute if score #test sab.var matches 2 \
    at @s positioned ~-2 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 3

execute if score #test sab.var matches 2 if score #z sab.var matches 3 \
    at @s positioned ~-2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 4

execute if score #test sab.var matches 2 if score #z sab.var matches 4 \
    at @s positioned ~-2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 5

execute if score #test sab.var matches 2 if score #z sab.var matches 5 \
    at @s positioned ~-2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 6

execute if score #test sab.var matches 2 if score #z sab.var matches 6 \
    at @s positioned ~-2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 7



#-----------------------
#expand from size 3
execute if score #test sab.var matches 3 \
    at @s positioned ~-3 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 4

execute if score #test sab.var matches 3 if score #z sab.var matches 4 \
    at @s positioned ~-3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 5

execute if score #test sab.var matches 3 if score #z sab.var matches 5 \
    at @s positioned ~-3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 6

execute if score #test sab.var matches 3 if score #z sab.var matches 6 \
    at @s positioned ~-3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 7



#-----------------------
#expand from size 4
execute if score #test sab.var matches 4 \
    at @s positioned ~-4 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 5

execute if score #test sab.var matches 4 if score #z sab.var matches 5 \
    at @s positioned ~-4 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 6

execute if score #test sab.var matches 4 if score #z sab.var matches 6 \
    at @s positioned ~-4 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 7



#-----------------------
#expand from size 5
execute if score #test sab.var matches 5 \
    at @s positioned ~-5 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~6 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 6

execute if score #test sab.var matches 5 if score #z sab.var matches 6 \
    at @s positioned ~-5 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~ ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~7 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #z sab.var 7



#now finalize

#pick best of 2 dimensions
#if there's a tie, pick one at random
execute store result score #random sab.var run random value 1..2
execute if score #x sab.var > #z sab.var run scoreboard players set #random sab.var 1
execute if score #z sab.var > #x sab.var run scoreboard players set #random sab.var 2
execute if score #random sab.var matches 1 store result entity @s data.spread[0] int 1 run scoreboard players get #x sab.var
execute if score #random sab.var matches 2 store result entity @s data.spread[1] int 1 run scoreboard players get #z sab.var