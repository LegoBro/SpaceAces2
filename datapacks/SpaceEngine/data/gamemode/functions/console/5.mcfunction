tag @e[type=villager,tag=pilot,tag=!randomClass] add temp
tag @e[type=villager,tag=pilot,tag=!randomClass] add randomClass
tag @e[type=villager,tag=pilot,tag=!temp] remove randomClass
tag @e[type=villager,tag=pilot,tag=temp] remove temp
execute if entity @e[type=villager,tag=pilot,tag=randomClass] run tellraw @a ["",{"text":"Random classes enabled","color":"green"}]
execute if entity @e[type=villager,tag=pilot,tag=!randomClass] run tellraw @a ["",{"text":"Random classes disabled","color":"red"}]
execute if entity @e[type=villager,tag=pilot,tag=!randomClass] run data merge block 6 196 -10 {Text2:'{"text":"Disabled","color":"red"}'}
execute if entity @e[type=villager,tag=pilot,tag=randomClass] run data merge block 6 196 -10 {Text2:'{"text":"Enabled","color":"green"}'}
clone 5 196 -10 6 196 -10 10 196 -10
