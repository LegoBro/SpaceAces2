tag @s add invis
scoreboard players remove @s invis 1
effect give @s minecraft:invisibility 1 0 true
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
execute if entity @s[scores={invis=..0}] run function classes:3.4/infiltraitor/cloak/uncloak

return 1