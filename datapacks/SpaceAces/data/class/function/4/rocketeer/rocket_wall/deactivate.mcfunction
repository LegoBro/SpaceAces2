summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}
summon item_display ~ ~ ~ {Tags:["rocket_wall","grenade","hb_block","class.deployable","new","entity","projectile.invisible","kill_effect_override","hb"],teleport_duration:2,item:{id:paper,components:{item_model:"class/rocketeer/shield_rocket"}}}

execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^1 ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^1 ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^1 ^-1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^ ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^ ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^ ^-1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^-1 ^1 ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^-1 ^ ^ ~ ~
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket_wall,tag=new,sort=nearest,limit=1,distance=..4] ^-1 ^-1 ^ ~ ~
execute as @e[type=minecraft:item_display,tag=rocket_wall,sort=nearest,tag=new,limit=9,distance=..4] at @s positioned ~ ~ ~ run function class:4/rocketeer/rocket_wall/projectile
execute at @s run playsound minecraft:gun.wall hostile @a ~ ~ ~

return 1