## fire bomb becomes active
summon item_display ~ ~ ~ {Tags:["class.pyro.trailblazer.trail","ignore.projectiles","entity","class.deployable","new"],teleport_duration:1}
execute store result score @e[type=item_display,tag=class.pyro.trailblazer.trail,tag=new,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute store result score @e[type=item_display,tag=class.pyro.trailblazer.trail,tag=new,sort=nearest,limit=1,distance=..3] Team run scoreboard players get @s Team

return 1