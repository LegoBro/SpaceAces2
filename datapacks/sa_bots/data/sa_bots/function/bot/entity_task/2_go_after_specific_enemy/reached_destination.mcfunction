#go straight at the enemy if we're tagged to do so
execute if entity @s[tag=sab.botWantsToGetInMeleeRange] run return run function sa_bots:bot/entity_task/2_go_after_specific_enemy/pursue_enemy_directly
#=====

#go straight at enemy if we're very confident
execute if entity @s[tag=!sab.botWantsToKeepDistanceFromEnemy,scores={sab.botConfidence=9..}] run return run function sa_bots:bot/entity_task/2_go_after_specific_enemy/pursue_enemy_directly
#=====

#if we didn't decide to keep going, pick a new base task
function sa_bots:bot/entity_task/_improvise_base_task
