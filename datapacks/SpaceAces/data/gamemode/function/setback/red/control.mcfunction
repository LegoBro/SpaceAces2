bossbar set minecraft:main color red
bossbar set minecraft:main name ["",{"text":"RLU Capture Progress ",color:"red","type":"text"},{score:{name:"gamemode.setback.blue_points",objective:"Numbers"},color: yellow}]
execute store result bossbar minecraft:main value run scoreboard players get point Numbers
execute if score point Numbers >= fullPoint Numbers run function gamemode:setback/red/capture

return 1