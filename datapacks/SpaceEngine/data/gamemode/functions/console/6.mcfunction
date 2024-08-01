tag @e[type=villager,tag=pilot,tag=!balanceTeams] add temp
tag @e[type=villager,tag=pilot,tag=!balanceTeams] add balanceTeams
tag @e[type=villager,tag=pilot,tag=!temp] remove balanceTeams
tag @e[type=villager,tag=pilot,tag=temp] remove temp
execute if entity @e[type=villager,tag=pilot,tag=balanceTeams] run tellraw @a ["",{"text":"Balanced teams enabled","color":"green"}]
execute if entity @e[type=villager,tag=pilot,tag=!balanceTeams] run tellraw @a ["",{"text":"Balanced teams disabled","color":"red"}]
execute if entity @e[type=villager,tag=pilot,tag=!balanceTeams] run data merge block 6 196 -10 {Text4:'{"text":"Disabled","color":"red"}'}
execute if entity @e[type=villager,tag=pilot,tag=balanceTeams] run data merge block 6 196 -10 {Text4:'{"text":"Enabled","color":"green"}'}
clone 5 196 -10 6 196 -10 10 196 -10
