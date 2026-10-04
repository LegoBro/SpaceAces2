#executed by bot


#determine confidence based on game state
# ..4 = generally unconfident
# 5.. = generally condifent

#base confidence is equal to our aggression
scoreboard players operation @s sab.botConfidence = @s sab.botAggression


#confidence is influenced by how dangerous the current sector is for our team
#(#danger output will be negative in the case that our team has the advantage)
scoreboard players set #danger sab.var 0
scoreboard players operation #bot_in_sector sab.var = @s sab.botInSector
execute if score @s Team matches 2 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_blue
execute if score @s Team matches 1 run function sa_bots:bot/entity_task/log_possible_destination/get_sector_danger_red
scoreboard players operation #danger sab.var /= #10 sab.var
#high skill bots care about sector danger more
execute if score @s sab.botSkill matches 3.. run scoreboard players operation @s sab.botConfidence -= #danger sab.var
execute if score @s sab.botSkill matches 6.. run scoreboard players operation @s sab.botConfidence -= #danger sab.var
execute if score @s sab.botSkill matches 9.. run scoreboard players operation @s sab.botConfidence -= #danger sab.var


#more confident if we're a leader
execute if score @s sab.botFollowers matches 1.. run scoreboard players add @s sab.botConfidence 5

#more confident if we're following someone
execute if score @s sab.botFollowingPlayer matches 1.. run scoreboard players add @s sab.botConfidence 3

#less confident if we're defending
execute if score @s sab.botGoal matches 2 run scoreboard players remove @s sab.botConfidence 5

#more condifent with high hp
execute if score @s displayHealth matches 66.. run scoreboard players add @s sab.botConfidence 3

#less confident with low hp
execute if score @s displayHealth matches ..50 run scoreboard players remove @s sab.botConfidence 3
execute if score @s displayHealth matches ..25 run scoreboard players remove @s sab.botConfidence 3

#more confident if we like getting in people's faces
execute if entity @s[tag=sab.botWantsToGetCloseToEnemy] run scoreboard players add @s sab.botConfidence 8

#less confident if we want to keep our distance
execute if entity @s[tag=sab.botWantsToKeepDistanceFromEnemy] run scoreboard players remove @s sab.botConfidence 10

#less confident if we're retreating for health
execute if score @s sab.botTask matches 5 run scoreboard players remove @s sab.botConfidence 8



#check again in a random amount of time (roughy 2 seconds)
execute store result score @s sab.botConfidenceCheck run random value 30..50