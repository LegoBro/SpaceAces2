playsound block.anvil.land master @s ~ ~ ~ 1 2
tag @n[tag=my_turret,tag=standard] add sniper
tag @n[tag=my_turret,tag=sniper,tag=!standard] add rocket
tag @n[tag=my_turret,tag=rocket,tag=!sniper] add standard

tag @n[tag=my_turret,tag=standard,tag=sniper] remove standard
tag @n[tag=my_turret,tag=rocket,tag=sniper] remove sniper
tag @n[tag=my_turret,tag=standard,tag=rocket] remove rocket

scoreboard players operation @s ability.1.cooldown = class.mechanic.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1