#executed by a bot mannequin

#sa_bots:bot_data this = the storage associated with this bot


#are we running a regular tick or a lazy tick?
#determine based on
#1) whether our id is even or odd
#2) whether our the current tick is even or odd
execute store result score #bot_tick_type sab.var run data get storage sa_bots:bot_data this.id
scoreboard players operation #bot_tick_type sab.var %= #2 sab.var
execute if score #bot_tick_type sab.var matches 0 if score #10Hz sab.var matches 0 run function sa_bots:bot/entity_tick/entity_tick_regular
execute if score #bot_tick_type sab.var matches 0 if score #10Hz sab.var matches 1 run function sa_bots:bot/entity_tick/entity_tick_lazy
execute if score #bot_tick_type sab.var matches 1 if score #10Hz sab.var matches 0 run function sa_bots:bot/entity_tick/entity_tick_lazy
execute if score #bot_tick_type sab.var matches 1 if score #10Hz sab.var matches 1 run function sa_bots:bot/entity_tick/entity_tick_regular

#Q: why do regular / lazy ticks?
#A: i'm saving on performance by only having the bots "think" on every other tick (10Hz instead of 20Hz).
#   and we balance the load on the server by having every other bot alternate how they do this


#we exist
scoreboard players set #bot_exists sab.var 1

#entity is allowed to continue existing for as long as this function is actively running
scoreboard players set @s sab.lifespan 3