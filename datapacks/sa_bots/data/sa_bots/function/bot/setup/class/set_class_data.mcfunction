#executed by a newly spawned bot


#get class
execute store result score @s Class run data get storage sa_bots:bot_data this.class


#fallback data
function sa_bots:bot/setup/class/fallback_data

#run class select function
execute if score @s Class matches 1 run function class:4/scout/select
execute if score @s Class matches 2 run function class:4/soldier/select
execute if score @s Class matches 3 run function class:4/sniper/select
execute if score @s Class matches 4 run function class:4/bomber/select
execute if score @s Class matches 5 run function class:4/gunner/select
execute if score @s Class matches 6 run function class:4/healer/select
execute if score @s Class matches 7 run function class:4/brawler/select
execute if score @s Class matches 8 run function class:4/mobility/select
execute if score @s Class matches 9 run function class:4/mechanic/select
execute if score @s Class matches 10 run function class:4/scientist/select
execute if score @s Class matches 11 run function class:4/infiltraitor/select
execute if score @s Class matches 12 run function class:4/pyro/select
execute if score @s Class matches 13 run function class:4/seeker/select
execute if score @s Class matches 14 run function class:4/shocksmith/select
execute if score @s Class matches 15 run function class:4/rocketeer/select

#be fully healed on respawn
scoreboard players operation @s health = @s maxHealth