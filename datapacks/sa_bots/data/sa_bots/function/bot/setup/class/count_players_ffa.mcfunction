#executed by a player or bot entity


#register our class
execute unless score @s Class matches 1..15 run data modify storage sa_bots:team_composition root.classes[0].count append value {team:-1}
execute if score @s Class matches 1 run data modify storage sa_bots:team_composition root.classes[1].count append value {team:-1}
execute if score @s Class matches 2 run data modify storage sa_bots:team_composition root.classes[2].count append value {team:-1}
execute if score @s Class matches 3 run data modify storage sa_bots:team_composition root.classes[3].count append value {team:-1}
execute if score @s Class matches 4 run data modify storage sa_bots:team_composition root.classes[4].count append value {team:-1}
execute if score @s Class matches 5 run data modify storage sa_bots:team_composition root.classes[5].count append value {team:-1}
execute if score @s Class matches 6 run data modify storage sa_bots:team_composition root.classes[6].count append value {team:-1}
execute if score @s Class matches 7 run data modify storage sa_bots:team_composition root.classes[7].count append value {team:-1}
execute if score @s Class matches 8 run data modify storage sa_bots:team_composition root.classes[8].count append value {team:-1}
execute if score @s Class matches 9 run data modify storage sa_bots:team_composition root.classes[9].count append value {team:-1}
execute if score @s Class matches 10 run data modify storage sa_bots:team_composition root.classes[10].count append value {team:-1}
execute if score @s Class matches 11 run data modify storage sa_bots:team_composition root.classes[11].count append value {team:-1}
execute if score @s Class matches 12 run data modify storage sa_bots:team_composition root.classes[12].count append value {team:-1}
execute if score @s Class matches 13 run data modify storage sa_bots:team_composition root.classes[13].count append value {team:-1}
execute if score @s Class matches 14 run data modify storage sa_bots:team_composition root.classes[14].count append value {team:-1}
execute if score @s Class matches 15 run data modify storage sa_bots:team_composition root.classes[15].count append value {team:-1}
