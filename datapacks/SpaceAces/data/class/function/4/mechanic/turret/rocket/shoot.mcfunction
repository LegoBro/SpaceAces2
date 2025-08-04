summon item_display ~ ~ ~ {Tags:["rocket","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id
tp @e[type=item_display,tag=rocket,sort=nearest,limit=1,distance=..3] ~ ~1.1 ~ ~ ~
execute as @e[type=item_display,tag=rocket,sort=nearest,limit=1,distance=..3] at @s run function class:4/mechanic/turret/rocket/projectile
playsound minecraft:gun.rocket player @a ~ ~ ~ 1.0 2.0
return 1