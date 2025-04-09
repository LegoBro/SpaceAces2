summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["rocket_wall","raycast","grenade","hb_mine","class.deployable","new"],teleport_duration:1}

execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^1 ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^1 ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^1 ^-1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^ ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^ ^-1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^-1 ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^-1 ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..3] ^-1 ^-1 ^ ~ ~
execute as @e[type=minecraft:item_display,tag=rocket_wall,sort=nearest,tag=new,limit=9,distance=..3] at @s positioned ~ ~ ~ run function class:4/rocketeer/rocket_wall/projectile
execute at @s run playsound minecraft:gun.wall hostile @a ~ ~ ~

return 1