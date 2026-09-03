

scoreboard players set @s[scores={shoot=..0}] shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shotgun","raycast","new","laser","projectile.invisible"],item:{id:paper,components:{item_model:"class/mechanic/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}

execute anchored eyes run tp @e[type=minecraft:item_display,tag=shotgun,tag=new,distance=..5] ^ ^ ^ ~ ~
execute as @n[type=minecraft:item_display,tag=shotgun,tag=new,sort=nearest,limit=1,distance=..5] at @s run function class:4/mechanic/primary/projectile_center
execute as @e[type=minecraft:item_display,tag=shotgun,tag=new,sort=nearest,limit=6,distance=..5] at @s run function class:4/mechanic/primary/projectile_wide
execute at @s run playsound minecraft:gun.shotgun hostile @a ~ ~ ~
return 1