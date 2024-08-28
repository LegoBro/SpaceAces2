## Runs if no player has tag "in_game"

# Red
execute unless score Gamemode Numbers matches 4 if score TotPlay Numbers >= MaxPlay Numbers run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] if score redTeam Numbers > blueTeam Numbers run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers unless entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] run team join red @a[x=10,y=195,z=8,dx=2,dy=3,dz=2]
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] unless score redTeam Numbers > blueTeam Numbers run team join red @a[x=10,y=195,z=8,dx=2,dy=3,dz=2]
execute if score Gamemode Numbers matches 4 run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force

# Blue
execute unless score Gamemode Numbers matches 4 if score TotPlay Numbers >= MaxPlay Numbers run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] if score blueTeam Numbers > redTeam Numbers run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers unless entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] run team join blue @a[x=4,y=195,z=8,dx=2,dy=3,dz=2]
execute unless score Gamemode Numbers matches 4 unless score TotPlay Numbers >= MaxPlay Numbers if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] unless score blueTeam Numbers > redTeam Numbers run team join blue @a[x=4,y=195,z=8,dx=2,dy=3,dz=2]
execute if score Gamemode Numbers matches 4 run team join blue @a[x=4,y=195,z=8,dx=2,dy=3,dz=2]

# Spec
particle minecraft:angry_villager 8.75 195.06 28.49 .5 .5 .5 .01 2 force

return 1