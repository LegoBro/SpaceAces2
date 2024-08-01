execute if score @s totalShots matches 15.. run effect give @s luck 1 10 true
execute if score @s totalShots matches 20 run xp set @s 5 levels
execute if score @s totalShots matches 19 run xp set @s 4 levels
execute if score @s totalShots matches 18 run xp set @s 3 levels
execute if score @s totalShots matches 17 run xp set @s 2 levels
execute if score @s totalShots matches 16 run xp set @s 1 levels
execute if score @s totalShots matches ..15 run xp set @s 0 levels
