#executed by bot entity


#set again in a random amount of time
execute store result score @s sab.botRandomAimOffsetTime run random value 5..10

#set random offset
execute if score @s sab.botSkill matches ..4 store result score @s sab.botRandomAimOffsetX run random value -90..90
execute if score @s sab.botSkill matches ..4 store result score @s sab.botRandomAimOffsetZ run random value -90..90
#less intense with higher skill
execute if score @s sab.botSkill matches 5..7 store result score @s sab.botRandomAimOffsetX run random value -80..80
execute if score @s sab.botSkill matches 5..7 store result score @s sab.botRandomAimOffsetZ run random value -80..80
execute if score @s sab.botSkill matches 8..10 store result score @s sab.botRandomAimOffsetX run random value -70..70
execute if score @s sab.botSkill matches 8..10 store result score @s sab.botRandomAimOffsetZ run random value -70..70

#very low offset if sniper
execute if entity @s[tag=sab.botShootsAtLongDistance] store result score @s sab.botRandomAimOffsetX run random value -20..20