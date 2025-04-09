## Launch

summon item_display ~ ~ ~ {Tags:["wrist_rocket","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=wrist_rocket,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=wrist_rocket,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/healer/wrist_rocket/projectile
execute at @s run playsound minecraft:gun.rocket hostile @a ~ ~ ~ 1 0.5 0

scoreboard players operation $strength player_motion.api.launch = class.healer.2.jump_power Numbers
execute at @s facing ^ ^ ^-1 run function player_motion:api/launch_looking
