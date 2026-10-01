#calculate sector connections if it's time to do that (once per game)
scoreboard players add #calculate_sector_connections sab.var 40
execute if score #calculate_sector_connections sab.var matches 120..999999 run function sa_bots:bot/sector_logic/sector_connections/_calculate_all

#count players in each team, class, role. also figure out what sector they're in
scoreboard players set #sector_presence_recalc sab.var 1
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1] run function sa_bots:bot/sector_logic/team_presence/reset
function sa_bots:bot/setup/class/_run_all_counts
function sa_bots:bot/sector_logic/team_presence/_calculate
function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue

#store goal counts in a scores that can be read faster (in case we have lots of bots requesting the counts)
#blue
execute store result score #playerCountBluePush sab.var run \
    execute if data storage sa_bots:team_composition root.goals[{name:"push"}].count[{team:1}]
execute store result score #playerCountBlueDefend sab.var run \
    execute if data storage sa_bots:team_composition root.goals[{name:"defend"}].count[{team:1}]
#red
execute store result score #playerCountRedPush sab.var run \
    execute if data storage sa_bots:team_composition root.goals[{name:"push"}].count[{team:2}]
execute store result score #playerCountRedDefend sab.var run \
    execute if data storage sa_bots:team_composition root.goals[{name:"defend"}].count[{team:2}]