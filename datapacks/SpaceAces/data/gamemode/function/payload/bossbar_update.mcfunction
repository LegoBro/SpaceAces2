execute store result bossbar minecraft:main max run scoreboard players get gamemode.payload.total_distance Numbers

# Both teams are on point
execute if score gamemode.payload.payload.red_players Numbers matches 1.. if score gamemode.payload.payload.blue_players Numbers matches 1.. run return run bossbar set minecraft:main name ["",{text:"x"},{score:{name:"gamemode.payload.payload.blue_players",objective:"Numbers"},color:blue},{text:" | x"},{score:{name:"gamemode.payload.payload.blue_players",objective:"Numbers"},color:red}]

# Just red is on point
execute if score gamemode.payload.payload.red_players Numbers matches 1.. run return run bossbar set minecraft:main name ["",{text:"x"},{score:{name:"gamemode.payload.payload.red_players",objective:"Numbers"},color:red}]

# Just blue
execute if score gamemode.payload.payload.blue_players Numbers matches 1.. run return run bossbar set minecraft:main name ["",{text:"x"},{score:{name:"gamemode.payload.payload.blue_players",objective:"Numbers"},color:blue}]
# no one

return run bossbar set minecraft:main name ["",{"text":"",color:"white","type":"text"}]