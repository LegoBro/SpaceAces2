#executed by a waypoint (must be at @s)

scoreboard players set #test sab.var 0

#find the biggest square we can make

#+-1
execute at @s positioned ~-1 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #test sab.var 1

execute unless score #test sab.var matches 1 run function sa_bots:editor/spawn/data/try_expand_x
#=====

#+-2
execute at @s positioned ~-2 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #test sab.var 2

execute unless score #test sab.var matches 2 run return run function sa_bots:editor/spawn/data/try_expand_x
#=====

#+-3
execute at @s positioned ~-3 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #test sab.var 3

execute unless score #test sab.var matches 3 run return run function sa_bots:editor/spawn/data/try_expand_x
#=====

#+-4
execute at @s positioned ~-4 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #test sab.var 4

execute unless score #test sab.var matches 4 run return run function sa_bots:editor/spawn/data/try_expand_x
#=====

#+-5
execute at @s positioned ~-5 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-5 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~ if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~-1 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~-2 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~-3 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~-4 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~5 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~4 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~ ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-1 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-2 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-3 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile \
        at @s positioned ~-4 ~ ~-5 if function sa_bots:editor/spawn/data/check_valid_spread_tile run scoreboard players set #test sab.var 5

function sa_bots:editor/spawn/data/try_expand_x