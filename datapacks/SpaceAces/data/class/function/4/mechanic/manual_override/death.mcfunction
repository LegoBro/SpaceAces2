summon item ~ ~ ~ {Age:5900,PickupDelay:32767,Tags:["class.deployable","get_motion","class.helper.part"],Item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"class/mechanic/drone"}}}
execute as @n[type=item,tag=get_motion,distance=..1] run function class:4/helper/death/part/motion

playsound block.netherite_block.place master @a ~ ~ ~ 1 1.5 0

kill @s