# Loads duel (dynamic)
scoreboard players set ActiveMode Numbers 1
execute if score Map Numbers matches 0 run function arena:load_moon_base
execute if score Map Numbers matches 1 run function arena:load_magma_forge
execute if score Map Numbers matches 2 run function arena:load_broken_city
execute if score Map Numbers matches 3 run function arena:load_dark_lair
execute if score Map Numbers matches 4 run function arena:load_reef_bunker
return 1