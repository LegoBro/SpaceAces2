#executed by an entity that a bot is considering shooting at

#this entity is
#1) a player, either human or bot
#2) on the same team as bot


#if injured, we become a valid target, again
execute if score @s displayHealth matches ..99 run tag @s add sab.possibleTarget
execute if score @s displayHealth matches ..99 run tag @s add sab.possibleTargetHealing