scoreboard players add @s class.animation 1
execute if score @s class.animation matches ..1 run return 0
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
tag @s remove class.helper.animation