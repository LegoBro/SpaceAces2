# Loads duel (dynamic)
scoreboard players set ActiveMode Numbers 1
execute if score Map settings matches 0 run function arena:load/moon_base
execute if score Map settings matches 1 run function arena:load/ruins
#execute if score Map settings matches 2 run function arena:load_broken_city
#execute if score Map settings matches 3 run function arena:load_dark_lair
#execute if score Map settings matches 4 run function arena:load_reef_bunker
return 1