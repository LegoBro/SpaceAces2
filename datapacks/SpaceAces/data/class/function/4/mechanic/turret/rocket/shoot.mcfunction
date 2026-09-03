summon item_display ~ ~ ~ {Tags:["rocket","raycast","grenade","ignore.projectiles","new"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/grenade"}}}
scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id
tp @n[type=minecraft:item_display,tag=rocket,tag=new] ~ ~ ~ ~ ~
execute as @n[type=minecraft:item_display,tag=rocket,tag=new] at @s run function class:4/mechanic/turret/rocket/projectile
playsound minecraft:gun.rocket player @a ~ ~ ~ 1.0 2.0
return 1