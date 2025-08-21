scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.mechanic.ultimate.duration Numbers

execute summon marker run function class:4/mechanic/manual_override/marker
summon item_display ~ ~ ~ {item:{id:stone},Tags:["class.deployable","new","class.mechanic.manual_override.drone"],teleport_duration:1}

gamemode spectator @s
spectate @n[type=item_display,tag=class.mechanic.manual_override.drone]

execute as @n[type=item_display,tag=new,tag=class.mechanic.manual_override.drone] run function class:4/helper/assign

effect clear @s
scoreboard players reset @s rightClick

tag @s add class.mechanic.manual_override.drone_operator

return 1