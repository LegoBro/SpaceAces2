# Loads duel (dynamic)
scoreboard players set ActiveMode Numbers 1
execute if score Map settings matches 0 run function arena:load/moon_base
execute if score Map settings matches 1 run function arena:load/ruins
execute if score Map settings matches 2 run function arena:load/penal_colony
execute if score Map settings matches 3 run function arena:load/frigate

return 1