## Runs if no player has tag "in_game"

# Red
execute if score TotPlay Numbers >= MaxPlay Numbers run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] if score redTeam Numbers > blueTeam Numbers run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force


# Blue
execute if score TotPlay Numbers >= MaxPlay Numbers run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] if score blueTeam Numbers > redTeam Numbers run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force



# Spec
particle minecraft:angry_villager 8.75 195.06 28.49 .5 .5 .5 .01 2 force

return 1