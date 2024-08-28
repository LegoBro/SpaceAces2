execute as @a[scores={talkToCharacter=1..}] at @s as @e[type=minecraft:villager,sort=nearest,limit=1] at @s run function tick:character_dictionary

return 1