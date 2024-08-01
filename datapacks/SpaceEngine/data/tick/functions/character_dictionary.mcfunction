stopsound @a[scores={talkToCharacter=1..}] voice
execute if entity @s[tag=greeter] run playsound greeter voice @a[scores={talkToCharacter=1..}] 11 200 15
execute if entity @s[tag=training_adviser] run playsound training_adviser voice @a[scores={talkToCharacter=1..}] -1 199 32
execute if entity @s[tag=pilot] run playsound pilot voice @a[scores={talkToCharacter=1..}] 10 200 61
execute if entity @s[tag=gunner_1] run playsound gunner_1 voice @a[scores={talkToCharacter=1..}] 14 199 38
execute if entity @s[tag=gunner_2] run playsound gunner_2 voice @a[scores={talkToCharacter=1..}] 2 199 38
execute if entity @s[tag=commander] run playsound commander voice @a[scores={talkToCharacter=1..}] 13 205 32
execute if entity @s[tag=archiver] run playsound archiver voice @a[scores={talkToCharacter=1..}] 5 215 5
scoreboard players reset @a[scores={talkToCharacter=1..}] talkToCharacter
