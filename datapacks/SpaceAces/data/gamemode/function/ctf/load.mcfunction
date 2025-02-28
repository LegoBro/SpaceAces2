# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 8
execute if score Map settings matches 0 run function arena:load/ruins

return 1