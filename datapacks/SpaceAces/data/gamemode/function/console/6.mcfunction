tag @e[type=minecraft:villager,tag=pilot,tag=!balanceTeams] add temp
tag @e[type=minecraft:villager,tag=pilot,tag=!balanceTeams] add balanceTeams
tag @e[type=minecraft:villager,tag=pilot,tag=!temp] remove balanceTeams
tag @e[type=minecraft:villager,tag=pilot,tag=temp] remove temp
execute if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] run tellraw @a ["",{"text":"Balanced teams enabled","color":"green","type":"text"}]
execute if entity @e[type=minecraft:villager,tag=pilot,tag=!balanceTeams] run tellraw @a ["",{"text":"Balanced teams disabled","color":"red","type":"text"}]
execute if entity @e[type=minecraft:villager,tag=pilot,tag=!balanceTeams] run data modify block 6 196 -10 front_text.messages[3] set value '{"text":"Disabled","color":"red","type":"text"}'
execute if entity @e[type=minecraft:villager,tag=pilot,tag=balanceTeams] run data modify block 6 196 -10 front_text.messages[3] set value '{"text":"Enabled","color":"green","type":"text"}'
clone 5 196 -10 6 196 -10 10 196 -10

return 1