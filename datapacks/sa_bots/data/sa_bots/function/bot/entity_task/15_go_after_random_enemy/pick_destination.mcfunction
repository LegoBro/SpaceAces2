#if not already targeting someone, target someone
execute unless score @s sab.botSeekingEnemy matches 1.. if score @s Team matches 1 run scoreboard players operation @s sab.botSeekingEnemy = @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=2},limit=1,sort=random] id
execute unless score @s sab.botSeekingEnemy matches 1.. if score @s Team matches 2 run scoreboard players operation @s sab.botSeekingEnemy = @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=1},limit=1,sort=random] id
execute unless score @s sab.botSeekingEnemy matches 1.. unless score @s Team matches 1..2 run scoreboard players operation @s sab.botSeekingEnemy = @e[type=#projectile:players,tag=sab.activePlayer,distance=2..,limit=1,sort=random] id

#immediately switch to task 2 so we can chase em' down
scoreboard players set #choice sab.var 2
function sa_bots:bot/entity_task/switch_base_task_forced