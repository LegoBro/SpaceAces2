## Vis Mine becomes active
summon armor_stand ^ ^ ^-0.5 {Invisible:1b,attributes:[{id:"minecraft:scale",base:0}],Tags:["deploying.vis_mine","ignore.projectiles","class.deployable","new"]}
tag @s remove kill
tag @s remove raycast
tag @s remove grenade
tag @s remove impact
ride @s mount @n[type=armor_stand,tag=deploying.vis_mine,tag=new,distance=..0.6]
tag @s add active_vis_mine
return 1