# Loads killstreak (dynamic)
scoreboard players set ActiveMode Numbers 4

execute if score Map settings matches 0 run function arena:load/moon_base
execute if score Map settings matches 1 run function arena:load/ruins

scoreboard players reset * kills
return 1