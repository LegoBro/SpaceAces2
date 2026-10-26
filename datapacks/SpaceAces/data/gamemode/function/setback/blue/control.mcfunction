scoreboard players operation negPoint Numbers = point Numbers
scoreboard players operation negPoint Numbers *= -1 Numbers

bossbar set minecraft:main color blue
bossbar set minecraft:main name ["",{"text":"IGSR Capture Progress ",color:"blue","type":"text"},{score:{name:"gamemode.setback.blue_points",objective:"Numbers"},color: yellow}]
execute store result bossbar minecraft:main value run scoreboard players get negPoint Numbers
execute if score negPoint Numbers >= fullPoint Numbers run function gamemode:setback/blue/capture

return 1