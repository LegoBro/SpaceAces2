#executed by one of the 16 markers keeping track of team presence for some sector


#clear tag
tag @s remove sab.propagateAgain.red

#do nothing if we're more blue than red
execute if score @s sab.teamPresenceNet matches 1.. run return fail
#=====

scoreboard players operation #input sab.var = @s sab.teamPresenceRed
execute if entity @s[tag=sab.connectedToSector.1] as d-0-0-0-1 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.2] as d-0-0-0-2 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.3] as d-0-0-0-3 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.4] as d-0-0-0-4 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.5] as d-0-0-0-5 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.6] as d-0-0-0-6 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.7] as d-0-0-0-7 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.8] as d-0-0-0-8 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.9] as d-0-0-0-9 run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.10] as d-0-0-0-a run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.11] as d-0-0-0-b run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.12] as d-0-0-0-c run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.13] as d-0-0-0-d run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.14] as d-0-0-0-e run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.15] as d-0-0-0-f run function sa_bots:bot/sector_logic/team_presence/propagate_red
execute if entity @s[tag=sab.connectedToSector.16] as d-0-0-0-10 run function sa_bots:bot/sector_logic/team_presence/propagate_red