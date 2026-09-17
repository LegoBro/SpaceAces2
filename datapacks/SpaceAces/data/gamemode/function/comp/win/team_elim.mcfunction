## Win condition for modes where when no player is left on enemy team, the team wins
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win