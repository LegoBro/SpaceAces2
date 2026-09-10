#executed by system


#reset counters
scoreboard players set #playerCount sab.var 0

#remove "activePlayer" tag from all players. re-add if player is in-game.
tag @a[tag=sab.activePlayer] remove sab.activePlayer

#clear lists
data modify storage sa_bots:team_composition root.classes[].count set value []
data modify storage sa_bots:team_composition root.roles[].count set value []
data modify storage sa_bots:team_composition root.goals[].count set value []

#count players
execute as @a[tag=in_game] run function sa_bots:bot/setup/class/count_players
execute as @e[type=mannequin,tag=sab.botEntity] run function sa_bots:bot/setup/class/count_players

#set various % thresholds that bots will use for logic
function sa_bots:bot/setup/class/set_team_thresholds_blue
function sa_bots:bot/setup/class/set_team_thresholds_red