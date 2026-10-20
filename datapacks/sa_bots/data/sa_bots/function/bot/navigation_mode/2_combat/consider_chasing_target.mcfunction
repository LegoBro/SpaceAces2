#there is a small cooldown on chasing again if we had to cancel it earlier
execute if score @s sab.botChaseTargetTime matches ..-1 run return run scoreboard players add @s sab.botChaseTargetTime 2
#=====

#must have walkable line to enemy
execute unless score @s sab.botChaseTargetTime matches 8.. unless function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy \
    run return fail
#=====

#keep chasing for a time (this will be refreshed often because this gets run over and over while targeting the enemy)
scoreboard players set @s sab.botChaseTargetTime 12

#go for it
scoreboard players set @s sab.botNavigationMode 2