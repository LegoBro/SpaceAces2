#nav mode 2 to directly chase a target
scoreboard players set @s sab.botNavigationMode 2
execute store result score @s sab.botChaseTargetTime run random value 60..100
scoreboard players operation @s sab.botChaseTargetTime += @s sab.botAggression
scoreboard players operation @s sab.botChaseTargetTime += @s sab.botAggression

#chase target
execute if score @s sab.botSeekingEnemy matches 1.. run scoreboard players operation @s sab.botTargetEntityID = @s sab.botSeekingEnemy

#pick destination so we keep doing this
function sa_bots:bot/entity_task/2_go_after_specific_enemy/pick_destination
