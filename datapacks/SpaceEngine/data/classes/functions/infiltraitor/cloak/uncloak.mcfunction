tag @s remove invis
particle minecraft:sweep_attack ~ ~ ~ .5 1.2 .5 0 30 force @a
playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 1
scoreboard players reset @s invis
function health:update_health
