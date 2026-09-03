summon item_display ~ ~ ~ {Tags:["rifle","raycast","projectile.invisible","laser","new"],item:{id:paper,components:{item_model:"class/sniper/laser"}},teleport_duration:1}

scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rifle,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:item_display,tag=rifle,distance=..3] at @s run function class:4/mechanic/turret/sniper/projectile
playsound minecraft:gun.rifle player @a ~ ~ ~ 1.0 2.0
return 1