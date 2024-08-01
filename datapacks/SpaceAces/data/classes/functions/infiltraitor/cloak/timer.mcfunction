tag @s add invis
scoreboard players remove @s invis 1
effect give @s invisibility 1 0 true
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
execute if entity @s[scores={invis=..0}] run function classes:infiltraitor/cloak/uncloak
