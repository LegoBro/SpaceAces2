

scoreboard players operation #damage Numbers = @s ability.1.cooldown
scoreboard players operation #damage Numbers *= -1 Numbers
scoreboard players set @s ability.1.cooldown 0

execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["sniper","raycast","new","laser","projectile.invisible"],item:{id:copper_bulb,components:{item_model:"class/sniper/starpiercer_laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run tp @e[type=item_display,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute if score @s ultimate.cooldown matches 1.. run tag @n[type=minecraft:area_effect_cloud,tag=new,tag=sniper] add class.sniper.ultimate
execute as @e[type=item_display,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/sniper/starpiercer/projectile
execute at @s run playsound minecraft:gun.plasma hostile @a ~ ~ ~
return 1