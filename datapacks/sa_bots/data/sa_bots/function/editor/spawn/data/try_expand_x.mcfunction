#adopt the square spread before we get the party started
data modify entity @s data.spread set value [0,0]
execute if score #test sab.var matches 1 run data modify entity @s data.spread set value [1,1]
execute if score #test sab.var matches 2 run data modify entity @s data.spread set value [2,2]
execute if score #test sab.var matches 3 run data modify entity @s data.spread set value [3,3]
execute if score #test sab.var matches 4 run data modify entity @s data.spread set value [4,4]
execute if score #test sab.var matches 5 run data modify entity @s data.spread set value [5,5]

scoreboard players set #x sab.var 0
scoreboard players set #z sab.var 0



#-----------------------
#expand from size 1
execute if score #test sab.var matches 0 \
    at @s positioned ~-1 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~1 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 1

execute if score #test sab.var matches 0 if score #x sab.var matches 1 \
    at @s positioned ~-2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 2

execute if score #test sab.var matches 0 if score #x sab.var matches 2 \
    at @s positioned ~-3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 3

execute if score #test sab.var matches 0 if score #x sab.var matches 3 \
    at @s positioned ~-4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 4

execute if score #test sab.var matches 0 if score #x sab.var matches 4 \
    at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 5



#-----------------------
#expand from size 1
execute if score #test sab.var matches 1 \
    at @s positioned ~-2 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-2 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~2 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 2

execute if score #test sab.var matches 1 if score #x sab.var matches 2 \
    at @s positioned ~-3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 3

execute if score #test sab.var matches 1 if score #x sab.var matches 3 \
    at @s positioned ~-4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 4

execute if score #test sab.var matches 1 if score #x sab.var matches 4 \
    at @s positioned ~-5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 5

execute if score #test sab.var matches 1 if score #x sab.var matches 5 \
    at @s positioned ~-6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 6

execute if score #test sab.var matches 1 if score #x sab.var matches 6 \
    at @s positioned ~-7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 7



#-----------------------
#expand from size 2
execute if score #test sab.var matches 2 \
    at @s positioned ~-3 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-3 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~3 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 3

execute if score #test sab.var matches 2 if score #x sab.var matches 3 \
    at @s positioned ~-4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 4

execute if score #test sab.var matches 2 if score #x sab.var matches 4 \
    at @s positioned ~-5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 5

execute if score #test sab.var matches 2 if score #x sab.var matches 5 \
    at @s positioned ~-6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 6

execute if score #test sab.var matches 2 if score #x sab.var matches 6 \
    at @s positioned ~-7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 7



#-----------------------
#expand from size 3
execute if score #test sab.var matches 3 \
    at @s positioned ~-4 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-4 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~4 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 4

execute if score #test sab.var matches 3 if score #x sab.var matches 4 \
    at @s positioned ~-5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 5

execute if score #test sab.var matches 3 if score #x sab.var matches 5 \
    at @s positioned ~-6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 6

execute if score #test sab.var matches 3 if score #x sab.var matches 6 \
    at @s positioned ~-7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 7



#-----------------------
#expand from size 4
execute if score #test sab.var matches 4 \
    at @s positioned ~-5 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-5 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~5 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 5

execute if score #test sab.var matches 4 if score #x sab.var matches 5 \
    at @s positioned ~-6 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 6

execute if score #test sab.var matches 4 if score #x sab.var matches 6 \
    at @s positioned ~-7 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 7



#-----------------------
#expand from size 5
execute if score #test sab.var matches 5 \
    at @s positioned ~-6 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-6 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~6 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 6

execute if score #test sab.var matches 5 if score #x sab.var matches 6 \
    at @s positioned ~-7 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~-7 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
    at @s positioned ~7 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #x sab.var 7



#now try z
function sa_bots:editor/spawn/data/try_expand_z