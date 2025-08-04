

# Get Owner
scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team

execute as @a if score @s id = place_id id run tag @s add target.owner
execute as @p[tag=target.owner] unless score @s Class matches 9 run kill @e[distance=..1,tag=turret_base,sort=nearest,limit=1]

# Tag potential enemies
execute if entity @s[tag=standard] as @e[tag=!ignore.projectiles,tag=!invis,distance=..30,tag=!ignore] unless score @s Team = Team Team run tag @s add target.enemy
execute if entity @s[tag=sniper] as @e[tag=!ignore.projectiles,tag=!invis,distance=..60,tag=!ignore] unless score @s Team = Team Team run tag @s add target.enemy
execute if entity @s[tag=rocket] as @e[tag=!ignore.projectiles,tag=!invis,distance=5..45,tag=!ignore] unless score @s Team = Team Team run tag @s add target.enemy

## Verify current target has LOS
scoreboard players operation target target.0 = @s target.0
scoreboard players operation target target.1 = @s target.1
scoreboard players operation target target.2 = @s target.2
scoreboard players operation target target.3 = @s target.3
execute as @e[tag=target.enemy] if score @s target.0 = target target.0 if score @s target.1 = target target.1 if score @s target.2 = target target.2 if score @s target.3 = target target.3 run function class:4/mechanic/turret/los_check

## Acquire Target
execute unless entity @n[tag=los_pass] run function class:4/mechanic/turret/acquire_target


execute if entity @s[tag=standard] run function class:4/mechanic/turret/standard/tick
execute if entity @s[tag=sniper] run function class:4/mechanic/turret/sniper/tick
execute if entity @s[tag=rocket] run function class:4/mechanic/turret/rocket/tick

function class:4/mechanic/turret/health

#execute if entity @s[tag=sniper,team=blue] if entity @e[distance=..25,tag=!invis,sort=nearest,limit=1,team=red] run function class:mechanic/turret/sniper
#execute if entity @s[tag=rocket_launcher,team=blue] if entity @e[distance=..20,tag=!invis,sort=nearest,limit=1,team=red] run function class:mechanic/turret/rocket

#execute unless entity @e[distance=..1,tag=turret_base,sort=nearest,limit=1] run kill @s

tag @a remove target.owner
tag @e remove target.enemy
tag @e remove los_pass

#say test
return 1