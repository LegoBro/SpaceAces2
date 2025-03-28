## Optimization for @s
tag @s remove new
execute if entity @s[tag=grenade] at @s run function tick:grenade
execute if entity @s[type=minecraft:item_frame] at @s run return run function tick:item_frame/tick
execute if entity @s[tag=raycast] at @s run return run function tick:raycast




execute if entity @s[tag=class.deployable] run return run function classes:entity_tick

# performs health functions
execute if entity @s[tag=entity] at @s run function health:tick
# BOT
execute if entity @s[tag=bot] at @s run function enemies:tick
# !items
kill @s[type=minecraft:item]

kill @s[type=!minecraft:player,x=3,y=195,z=-10,dx=11,dy=1,dz=15]

# kill aoe's summoned by creepers
kill @s[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:resistance"}]}]