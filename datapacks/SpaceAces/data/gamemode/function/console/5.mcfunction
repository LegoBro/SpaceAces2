tag @e[type=minecraft:villager,tag=pilot,tag=!randomClass] add temp
tag @e[type=minecraft:villager,tag=pilot,tag=!randomClass] add randomClass
tag @e[type=minecraft:villager,tag=pilot,tag=!temp] remove randomClass
tag @e[type=minecraft:villager,tag=pilot,tag=temp] remove temp
execute if entity @e[type=minecraft:villager,tag=pilot,tag=randomClass] run tellraw @a ["",{"text":"Random class enabled",color:"green","type":"text"}]
execute if entity @e[type=minecraft:villager,tag=pilot,tag=!randomClass] run tellraw @a ["",{"text":"Random class disabled",color:"red","type":"text"}]
execute if entity @e[type=minecraft:villager,tag=pilot,tag=!randomClass] run data modify block 6 196 -10 front_text.messages[1] set value {text:"Disabled",color:"red","type":"text"}
execute if entity @e[type=minecraft:villager,tag=pilot,tag=randomClass] run data modify block 6 196 -10 front_text.messages[1] set value {text:"Enabled",color:"green","type":"text"}
clone 5 196 -10 6 196 -10 10 196 -10

return 1