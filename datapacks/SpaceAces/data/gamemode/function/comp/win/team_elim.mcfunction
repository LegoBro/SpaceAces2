## Win condition for modes where when no player is left on enemy team, the team wins

execute if entity @e[type=#projectile:players,tag=hb,team=red] unless entity @e[type=#projectile:players,tag=hb,team=blue] run data modify storage game_history:current game.win_state set value "team_elim"
execute if entity @e[type=#projectile:players,tag=hb,team=red] unless entity @e[type=#projectile:players,tag=hb,team=blue] unless entity @e[tag=winner] run function gamemode:red_win

execute if entity @e[type=#projectile:players,tag=hb,team=blue] unless entity @e[type=#projectile:players,tag=hb,team=red] run data modify storage game_history:current game.win_state set value "team_elim"
execute if entity @e[type=#projectile:players,tag=hb,team=blue] unless entity @e[type=#projectile:players,tag=hb,team=red] unless entity @e[tag=winner] run function gamemode:blue_win