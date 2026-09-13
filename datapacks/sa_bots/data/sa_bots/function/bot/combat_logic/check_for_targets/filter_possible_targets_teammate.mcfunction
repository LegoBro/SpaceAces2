#executed by an entity that a bot is considering shooting at

#this entity is
#1) a player, either human or bot
#2) on the same team as bot


#figure out how injured we are
scoreboard players operation @s sab.healthPercentage = @s health
scoreboard players operation @s sab.healthPercentage *= #100 sab.var
scoreboard players operation @s sab.healthPercentage /= @s maxHealth

#if injured, we become a valid target, again
execute if score @s sab.healthPercentage matches ..99 run tag @s add sab.possibleTarget
execute if score @s sab.healthPercentage matches ..99 run tag @s add sab.possibleTargetHealing