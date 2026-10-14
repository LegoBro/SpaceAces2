#figure out what team this bot will be on
function sa_bots:bot/setup/team/red_vs_blue/evaluate_on_respawn


#execute at coordinates
$execute positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic

#clear respawn location data and send update to origin
data remove storage sa_bots:bot_data this.respawn_location
data modify storage sa_bots:bot_data this.updateOrigin set value 1