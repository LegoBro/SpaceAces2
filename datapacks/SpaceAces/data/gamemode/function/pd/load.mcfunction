# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 9
execute if score Map settings matches 0 run function arena:load/moon_base

return 1