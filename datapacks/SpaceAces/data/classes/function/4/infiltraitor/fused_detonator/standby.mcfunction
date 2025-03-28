## Standby for sticky bomb (sticks to enemies)
scoreboard players add @s ability.2.cooldown 1
execute if score @s ability.2.cooldown > class.infiltraitor.2.detonate_timer Numbers run function classes:4/infiltraitor/fused_detonator/detonate
return 1