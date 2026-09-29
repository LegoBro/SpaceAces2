scoreboard players set #sector_connections_calculated sab.var 0
data modify storage sa_bots:waypoint sector_connections set value [0,[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]

#we will also clear sector team presence while we're in here
function sa_bots:bot/sector_logic/presence_clear_all