stopsound @a[scores={talkToCharacter=1..}] voice
execute if entity @s[tag=greeter] run playsound minecraft:greeter voice @a[scores={talkToCharacter=1..}] 11 200 15
execute if entity @s[tag=training_adviser] run playsound minecraft:training_adviser voice @a[scores={talkToCharacter=1..}] -1 199 32
execute if entity @s[tag=pilot] run playsound minecraft:pilot voice @a[scores={talkToCharacter=1..}] 10 200 61
execute if entity @s[tag=gunner_1] run playsound minecraft:gunner_1 voice @a[scores={talkToCharacter=1..}] 14 199 38
execute if entity @s[tag=gunner_2] run playsound minecraft:gunner_2 voice @a[scores={talkToCharacter=1..}] 2 199 38
execute if entity @s[tag=commander] run playsound minecraft:commander voice @a[scores={talkToCharacter=1..}] 13 205 32
execute if entity @s[tag=archiver] run playsound minecraft:archiver voice @a[scores={talkToCharacter=1..}] 5 215 5
scoreboard players reset @a[scores={talkToCharacter=1..}] talkToCharacter

return 1