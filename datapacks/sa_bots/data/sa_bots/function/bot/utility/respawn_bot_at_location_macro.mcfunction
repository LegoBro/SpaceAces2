#executed by bot entity
#executed at the location we want to respawn the bot at
# $(i) = the index of the bot within sa_bots:bot_data bots[] array


#grab location and set it as our respawn location (this will only be used once, then expire)
tp e-0-0-0-1 ~ ~ ~
$data modify storage sa_bots:bot_data bots[$(i)].respawn_location set value {x:0.0,y:0.0,z:0.0}
$data modify storage sa_bots:bot_data bots[$(i)].respawn_location.x set from entity e-0-0-0-1 Pos[0]
$data modify storage sa_bots:bot_data bots[$(i)].respawn_location.y set from entity e-0-0-0-1 Pos[1]
$data modify storage sa_bots:bot_data bots[$(i)].respawn_location.z set from entity e-0-0-0-1 Pos[2]
tp e-0-0-0-1 0 50 0

#die if still alive
execute if entity @s[tag=sab.botEntity] run function sa_bots:bot/top_state/active/die