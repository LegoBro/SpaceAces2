
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute if score @s ability.2.cooldown >= class.seeker.2.duration Numbers run scoreboard players operation @s ability.2.cooldown = class.seeker.2.duration Numbers

#summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
#summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
#summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
#summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:dolphin"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:600,DurationOnUse:0.0f,Age:0,Tags:["heavy_shotgun","raycast","new"]}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["heavy_shotgun","raycast","new","laser","projectile.invisible"],item:{id:copper_bulb,components:{item_model:"class/seeker/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["heavy_shotgun","raycast","new","laser","projectile.invisible"],item:{id:copper_bulb,components:{item_model:"class/seeker/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["heavy_shotgun","raycast","new","laser","projectile.invisible"],item:{id:copper_bulb,components:{item_model:"class/seeker/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["heavy_shotgun","raycast","new","laser","projectile.invisible"],item:{id:copper_bulb,components:{item_model:"class/seeker/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=heavy_shotgun,tag=new,sort=nearest,limit=4,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=heavy_shotgun,tag=new,sort=nearest,limit=4,distance=..3] at @s run function class:4/seeker/primary/projectile
execute at @s run playsound minecraft:gun.heavy_shotgun hostile @a ~ ~ ~
return 1
