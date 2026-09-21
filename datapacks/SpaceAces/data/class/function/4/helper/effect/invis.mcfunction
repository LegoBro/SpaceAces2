tag @s add invis
scoreboard players remove @s invis 1
effect give @s minecraft:invisibility 1 0 true
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

execute if score @s invis matches 1.. run return 0

tag @s remove invis
particle minecraft:sweep_attack ~ ~ ~ .5 1.2 .5 0 30 force @a
playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 1
scoreboard players reset @s invis

return 0