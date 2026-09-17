## Safety to verify that there are players on both teams
execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers -1