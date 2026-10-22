#figure out what team this bot will be on
function sa_bots:bot/setup/team/_index_team_assignment


#read what team we are
execute store result score #use_spawnpoint sab.var run data get storage sa_bots:bot_data this.team

#execute at a proper spawn point

#first: try to spawn at an active spawnpoint
scoreboard players set #spawn_success sab.var 0
execute if score #use_spawnpoint sab.var matches 1 at @e[type=marker,tag=blue_spawn_point,limit=1,sort=random,scores={gamemode.spawnpoint.progress=0}] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute if score #use_spawnpoint sab.var matches 2 at @e[type=marker,tag=red_spawn_point,limit=1,sort=random,scores={gamemode.spawnpoint.progress=0}] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute unless score #use_spawnpoint sab.var matches 1..2 at @e[type=marker,tag=general_spawn_point,limit=1,sort=random,scores={gamemode.spawnpoint.progress=0}] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
#we're done if one of those worked
execute if score #spawn_success sab.var matches 1 run return 1
#=====
#fallback: pick any spawn
execute if score #use_spawnpoint sab.var matches 1 at @e[type=marker,tag=blue_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute if score #use_spawnpoint sab.var matches 2 at @e[type=marker,tag=red_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute unless score #use_spawnpoint sab.var matches 1..2 at @e[type=marker,tag=general_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic