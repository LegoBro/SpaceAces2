#executed by a bot


#gameplay scores
scoreboard players set @s sab.botNavigationMode 0
scoreboard players set @s sab.botLookTime 0
#...

#navigation
scoreboard players set @s sab.botBestDistanceToTargetX 2147483647
scoreboard players set @s sab.botBestDistanceToTargetY 2147483647
scoreboard players set @s sab.botBestDistanceToTargetZ 2147483647


#adopt variables from storage
execute store result score @s Team run data get storage sa_bots:bot_data this.team
execute store result score @s sab.botID run data get storage sa_bots:bot_data this.id

#assign a unique id score
#to avoid generating a bunch of garbage ids for humans, bots will be assigned an id like this:
# id=(2,000,000,000 + bots[x].id)
execute store result score @s id run data get storage sa_bots:bot_data this.id
scoreboard players add @s id 2000000000

#assume bot is able to sprint
tag @s add sab.botCanSprint

#show username
data modify entity @s CustomNameVisible set value true

#set team depending on team
execute if score @s Team matches 1 run team join blue
execute if score @s Team matches 2 run team join red

#give hitbox and important tags
tag @s add hb
tag @s add hb_player
tag @s add entity
#(we will specify size in class setup functions)

#we're a visible player that other bots can interact with
tag @s add sab.activePlayer
