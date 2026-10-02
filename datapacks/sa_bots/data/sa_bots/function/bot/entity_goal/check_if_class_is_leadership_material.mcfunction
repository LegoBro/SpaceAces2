#return 1 if yes
#return 0 if no

#some considerations i made:
#- very fast classes are not good leaders since teammates can't keep up
#- classes that are focused on stealth are not good leaders
#- healer is not a good leader since they need to have heal targets in their field of view (less likely when they're in front of everyone)

execute if score @s Class matches 1 run return 0
execute if score @s Class matches 2 run return 1
execute if score @s Class matches 3 run return 0
execute if score @s Class matches 4 run return 1
execute if score @s Class matches 5 run return 1
execute if score @s Class matches 6 run return 0
execute if score @s Class matches 7 run return 1
execute if score @s Class matches 8 run return 0
execute if score @s Class matches 9 run return 1
execute if score @s Class matches 10 run return 1
execute if score @s Class matches 11 run return 0
execute if score @s Class matches 12 run return 1
execute if score @s Class matches 13 run return 0
execute if score @s Class matches 14 run return 1
execute if score @s Class matches 15 run return 1

return 0