#roll random number, influenced by confidence
execute store result score #random sab.var run random value -5..5
scoreboard players operation #random sab.var += @s sab.botConfidence

#kick out if we rolled 12 or lower
execute if score #random sab.var matches ..12 run return fail
#=====

#random chance we might just... not
execute store result score #random sab.var run random value 1..5
execute if score #random sab.var matches ..2 run return fail
#=====


#navigate to the person we're looking at
scoreboard players set #get_id sab.var -1
scoreboard players operation #target_id sab.var = @s sab.botTargetEntityID
execute as @e[type=#projectile:players,tag=sab.activePlayer] if score @s sab.entityTargetingID = #target_id sab.var run \
    scoreboard players operation #get_id sab.var = @s id
execute if score #get_id sab.var matches 0.. run scoreboard players operation @s sab.botSeekingEnemy = #get_id sab.var
execute if score #get_id sab.var matches 0.. run function sa_bots:bot/entity_task/switch_base_task_macro {choice:2}