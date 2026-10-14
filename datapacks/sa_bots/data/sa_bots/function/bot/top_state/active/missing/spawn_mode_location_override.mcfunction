scoreboard players set #bot_spawn_mode sab.var -1
data modify storage sa_bots:generic x set from storage sa_bots:bot_data this.respawn_location.x
data modify storage sa_bots:generic y set from storage sa_bots:bot_data this.respawn_location.y
data modify storage sa_bots:generic z set from storage sa_bots:bot_data this.respawn_location.z