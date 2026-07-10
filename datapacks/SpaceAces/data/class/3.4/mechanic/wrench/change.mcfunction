## Simply handles the turret head changing
tag @s[tag=standard] add sniper
tag @s[tag=sniper,tag=!standard] add rocket_launcher
tag @s[tag=rocket_launcher,tag=!sniper] add standard
tag @s[tag=standard,tag=rocket_launcher] remove rocket_launcher
tag @s[tag=standard,tag=sniper] remove standard
tag @s[tag=sniper,tag=rocket_launcher] remove sniper
item replace entity @s[tag=standard,team=blue] armor.head with minecraft:tropical_fish
item replace entity @s[tag=sniper,team=blue] armor.head with minecraft:pufferfish
item replace entity @s[tag=rocket_launcher,team=blue] armor.head with minecraft:cooked_cod
item replace entity @s[tag=standard,team=red] armor.head with minecraft:porkchop
item replace entity @s[tag=sniper,team=red] armor.head with minecraft:mushroom_stew
item replace entity @s[tag=rocket_launcher,team=red] armor.head with minecraft:cooked_porkchop
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ .5 .5 .5 0 10 force @a

return 1