bossbar set minecraft:main color red
bossbar set minecraft:main name ["",{"text":"RLU Capture Progress ",color:"red","type":"text"},{score:{name:"gamemode.setback.red_points",objective:"Numbers"},color: yellow}]
execute store result bossbar minecraft:main value run scoreboard players get point Numbers
execute if score point Numbers >= fullPoint Numbers run function gamemode:setback/red/capture

execute at @n[tag=gamemode.setback.active_point] run team join red @n[type=block_display,tag=gamemode.setback.point_visuals]

return 1