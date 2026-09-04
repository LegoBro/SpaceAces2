#figure out what team this bot will be on
function sa_bots:bot/setup/team/red_vs_blue/evaluate_on_respawn


#read what team we are
execute store result score #use_spawnpoint sab.var run data get storage sa_bots:bot_data this.team

#execute at a proper spawn point (red/blue ones must be active)
execute if score #use_spawnpoint sab.var matches 1 at @e[type=marker,tag=active_blue_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute if score #use_spawnpoint sab.var matches 2 at @e[type=marker,tag=active_red_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic
execute unless score #use_spawnpoint sab.var matches 1..2 at @e[type=marker,tag=general_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic