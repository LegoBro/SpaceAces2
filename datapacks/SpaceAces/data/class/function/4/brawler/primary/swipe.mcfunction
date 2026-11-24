
summon minecraft:marker ~ ~ ~ {Tags:["swipe","raycast","projectile.invisible"]}
tp @e[type=minecraft:marker,tag=swipe,sort=nearest,limit=1,distance=..1.5] ^ ^ ^ ~ ~
execute as @e[type=minecraft:marker,tag=swipe,sort=nearest,limit=1,distance=..1.5] at @s run function class:4/brawler/primary/projectile
scoreboard players add @s stat.game.shots_fired 1
return 1