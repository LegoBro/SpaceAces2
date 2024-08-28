# Cycles the currently selected gamemode (dynamic)
scoreboard players add Gamemode Numbers 1
execute if score Gamemode Numbers matches 5.. run scoreboard players set Gamemode Numbers 0
item replace entity @e[type=minecraft:armor_stand,tag=map_display_0] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_1] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_2] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_3] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_4] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_5] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_6] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_7] armor.head with minecraft:air
item replace entity @e[type=minecraft:armor_stand,tag=map_display_8] armor.head with minecraft:air

execute if score Gamemode Numbers matches 0 run function help:fe8e78138e020d8cc3f39a72667aeb0232a6c997fdee017b12a03605513d15ee
execute if score Gamemode Numbers matches 0 run function gamemode:duel/display
execute if score Gamemode Numbers matches 0 run scoreboard players set GameMinPlay Numbers 2
execute if score Gamemode Numbers matches 0 run scoreboard players set GameRecPlay Numbers 2
execute if score Gamemode Numbers matches 1 run function help:737ebe148c049d8d104e442959ca45c29ba066a77831a58b5b808f7d691c88f0
execute if score Gamemode Numbers matches 1 run function gamemode:tdm/display
execute if score Gamemode Numbers matches 1 run scoreboard players set GameMinPlay Numbers 2
execute if score Gamemode Numbers matches 1 run scoreboard players set GameRecPlay Numbers 4
execute if score Gamemode Numbers matches 2 run function help:65f8e88ecd47df74e6ff9d24a86f907aba0fe3cb93ea60ab091cad161ecf8785
execute if score Gamemode Numbers matches 2 run function gamemode:setback/display
execute if score Gamemode Numbers matches 2 run scoreboard players set GameMinPlay Numbers 2
execute if score Gamemode Numbers matches 2 run scoreboard players set GameRecPlay Numbers 6
execute if score Gamemode Numbers matches 3 run function help:4d33255767ceb3a36b0f1635bf1315f8d3492b646092e7d3eeb0e3d91f0c4694
execute if score Gamemode Numbers matches 3 run function gamemode:killstreak/display
execute if score Gamemode Numbers matches 3 run scoreboard players set GameMinPlay Numbers 2
execute if score Gamemode Numbers matches 3 run scoreboard players set GameRecPlay Numbers 2
execute if score Gamemode Numbers matches 4 run function help:9a60ab0961855dd4a71e14aaaec795528e87373bbb39f0f5e7c7ce885a045d77
execute if score Gamemode Numbers matches 4 run function gamemode:escape/display
execute if score Gamemode Numbers matches 4 run scoreboard players set GameMinPlay Numbers 1
execute if score Gamemode Numbers matches 4 run scoreboard players set GameRecPlay Numbers 2
scoreboard players operation MinPlay Numbers = GameMinPlay Numbers
data modify block 5 196 -10 front_text.messages[1] set from block 9 200 65 front_text.messages[2]
clone 5 196 -10 6 196 -10 10 196 -10
return 1