#executed by system


#reset counters
scoreboard players set #playerCount sab.var 0
scoreboard players set #playerCountBlue sab.var 0
scoreboard players set #playerCountRed sab.var 0

#remove "activePlayer" tag from all players. re-add if player is in-game.
tag @a[tag=sab.activePlayer] remove sab.activePlayer

#clear lists
data modify storage sa_bots:team_composition root.classes[].count set value []
data modify storage sa_bots:team_composition root.roles[].count set value []
data modify storage sa_bots:team_composition root.goals[].count set value []

#get ready to count players of each team in each sector
execute if score #sector_presence_recalc sab.var matches 1 run function sa_bots:bot/sector_logic/presence_clear_all

#count players
execute as @a[tag=in_game,gamemode=adventure] run function sa_bots:bot/setup/class/count_players
execute as @e[type=mannequin,tag=sab.botEntity] run function sa_bots:bot/setup/class/count_players_bot

#turrets also count towards team presence
execute if score #sector_presence_recalc sab.var matches 1 as @e[type=item_display,tag=turret_base,scores={Team=1..2}] at @s run function sa_bots:bot/sector_logic/log_turret_in_sector

#set various % thresholds that bots will use for logic
function sa_bots:bot/setup/class/set_team_thresholds_blue
function sa_bots:bot/setup/class/set_team_thresholds_red

#reset recalc flag
scoreboard players set #sector_presence_recalc sab.var 0