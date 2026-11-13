scoreboard players set @s ultimate_charge 0
scoreboard players add @s stat.game.ults_used 1
scoreboard players operation @s ultimate.cooldown = class.mechanic.ultimate.duration Numbers

execute summon marker run function class:4/mechanic/manual_override/marker
summon item_display ~ ~1 ~ {item:{id:stone,components:{item_model:"class/mechanic/drone"}},Tags:["class.deployable","new","class.mechanic.manual_override.drone"],teleport_duration:2}
tp @n[type=item_display,tag=class.mechanic.manual_override.drone] ~ ~1 ~ ~ 0
execute if entity @s[type=player] run gamemode spectator @s
execute if entity @s[type=player] run spectate @n[type=item_display,tag=class.mechanic.manual_override.drone] @s
execute if entity @s[tag=sab.botEntity] run function sa_bots:bot/movement/4_flying_vehicle/take_control_of_drone

execute as @n[type=item_display,tag=new,tag=class.mechanic.manual_override.drone] run function class:4/helper/assign

effect clear @s
scoreboard players reset @s rightClick

tag @s add class.mechanic.manual_override.drone_operator

return 1