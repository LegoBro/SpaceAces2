## Smokescreen
#summon item_display ~ ~ ~ {Tags:["active_smokescreen","ignore.projectiles","entity","class.deployable","new"],teleport_duration:1}
#execute store result score @e[type=item_display,tag=active_smokescreen,tag=new,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
#execute store result score @e[type=item_display,tag=active_smokescreen,tag=new,sort=nearest,limit=1,distance=..3] Team run scoreboard players get @s Team

summon marker ^ ^ ^-1 {Tags:["class.deployable","active_smokescreen"]}
execute store result score @e[type=marker,tag=active_smokescreen,tag=new,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute store result score @e[type=marker,tag=active_smokescreen,tag=new,sort=nearest,limit=1,distance=..3] Team run scoreboard players get @s Team
#particle campfire_signal_smoke ^ ^ ^-1 1 1 1 0.01 50 force @a

return 1