## Executed as the attacker, and assumes stats are set up in scoreboard
summon marker ~ ~ ~ {Tags:["projectile.boomer","raycast","ignore.projectiles","projectile.invisible"]}
scoreboard players operation #damageMultiplier Numbers = @s damageMultiplier
execute as @n[type=minecraft:marker,tag=projectile.boomer,sort=nearest,limit=1,distance=..3] run function projectile:boomer/projectile
return 1