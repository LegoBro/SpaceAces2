#executed by a player or bot entity


#we're on this team
scoreboard players add #playerCountBlue sab.var 1

#register our class
execute unless score @s Class matches 1..15 run data modify storage sa_bots:team_composition root.class[0].count append value {team:1}
execute if score @s Class matches 1 run data modify storage sa_bots:team_composition root.class[1].count append value {team:1}
execute if score @s Class matches 2 run data modify storage sa_bots:team_composition root.class[2].count append value {team:1}
execute if score @s Class matches 3 run data modify storage sa_bots:team_composition root.class[3].count append value {team:1}
execute if score @s Class matches 4 run data modify storage sa_bots:team_composition root.class[4].count append value {team:1}
execute if score @s Class matches 5 run data modify storage sa_bots:team_composition root.class[5].count append value {team:1}
execute if score @s Class matches 6 run data modify storage sa_bots:team_composition root.class[6].count append value {team:1}
execute if score @s Class matches 7 run data modify storage sa_bots:team_composition root.class[7].count append value {team:1}
execute if score @s Class matches 8 run data modify storage sa_bots:team_composition root.class[8].count append value {team:1}
execute if score @s Class matches 9 run data modify storage sa_bots:team_composition root.class[9].count append value {team:1}
execute if score @s Class matches 10 run data modify storage sa_bots:team_composition root.class[10].count append value {team:1}
execute if score @s Class matches 11 run data modify storage sa_bots:team_composition root.class[11].count append value {team:1}
execute if score @s Class matches 12 run data modify storage sa_bots:team_composition root.class[12].count append value {team:1}
execute if score @s Class matches 13 run data modify storage sa_bots:team_composition root.class[13].count append value {team:1}
execute if score @s Class matches 14 run data modify storage sa_bots:team_composition root.class[14].count append value {team:1}
execute if score @s Class matches 15 run data modify storage sa_bots:team_composition root.class[15].count append value {team:1}

#register our role
execute if score @s Class matches 1..4 run data modify storage sa_bots:team_composition root.roles[{name:"striker"}].count append value {team:1}
execute if score @s Class matches 5 run data modify storage sa_bots:team_composition root.roles[{name:"guardian"}].count append value {team:1}
execute if score @s Class matches 6 run data modify storage sa_bots:team_composition root.roles[{name:"sustainer"}].count append value {team:1}
execute if score @s Class matches 7 run data modify storage sa_bots:team_composition root.roles[{name:"guardian"}].count append value {team:1}
execute if score @s Class matches 8 run data modify storage sa_bots:team_composition root.roles[{name:"striker"}].count append value {team:1}
execute if score @s Class matches 9 run data modify storage sa_bots:team_composition root.roles[{name:"guardian"}].count append value {team:1}
execute if score @s Class matches 10 run data modify storage sa_bots:team_composition root.roles[{name:"sustainer"}].count append value {team:1}
execute if score @s Class matches 11 run data modify storage sa_bots:team_composition root.roles[{name:"striker"}].count append value {team:1}
execute if score @s Class matches 12 run data modify storage sa_bots:team_composition root.roles[{name:"guardian"}].count append value {team:1}
execute if score @s Class matches 13 run data modify storage sa_bots:team_composition root.roles[{name:"sustainer"}].count append value {team:1}
execute if score @s Class matches 14 run data modify storage sa_bots:team_composition root.roles[{name:"guardian"}].count append value {team:1}

#register our goal
#bot entity will tell us exactly what it's doing
execute if entity @s[tag=sab.botEntity,scores={sab.botGoal=0}] run data modify storage sa_bots:team_composition root.roles[{name:"pick"}].count append value {team:1}
execute if entity @s[tag=sab.botEntity,scores={sab.botGoal=1}] run data modify storage sa_bots:team_composition root.roles[{name:"push"}].count append value {team:1}
execute if entity @s[tag=sab.botEntity,scores={sab.botGoal=2}] run data modify storage sa_bots:team_composition root.roles[{name:"defend"}].count append value {team:1}
execute if entity @s[tag=sab.botEntity,scores={sab.botGoal=3}] run data modify storage sa_bots:team_composition root.roles[{name:"pick"}].count append value {team:1}

#assume humans will do what is generally expected of their role
execute if entity @s[type=player,scores={Class=1..2}] run data modify storage sa_bots:team_composition root.roles[{name:"push"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=3}] run data modify storage sa_bots:team_composition root.roles[{name:"pick"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=4..8}] run data modify storage sa_bots:team_composition root.roles[{name:"push"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=9}] run data modify storage sa_bots:team_composition root.roles[{name:"defend"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=10}] run data modify storage sa_bots:team_composition root.roles[{name:"push"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=11}] run data modify storage sa_bots:team_composition root.roles[{name:"pick"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=12}] run data modify storage sa_bots:team_composition root.roles[{name:"defend"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=13}] run data modify storage sa_bots:team_composition root.roles[{name:"pick"}].count append value {team:1}
execute if entity @s[type=player,scores={Class=14..15}] run data modify storage sa_bots:team_composition root.roles[{name:"push"}].count append value {team:1}