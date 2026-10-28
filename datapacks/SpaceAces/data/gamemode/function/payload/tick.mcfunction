## Commands ran for payload

execute if entity @e[type=#projectile:players,tag=hb,tag=winner] run return run function gamemode:comp/end/invulnerable

# Payload, blue is always pushing
execute as @n[type=pig,tag=payload] at @s store result score gamemode.payload.payload.blue_players Numbers if entity @e[team=blue,type=#projectile:players,tag=hb,distance=..7]
execute as @n[type=pig,tag=payload] at @s store result score gamemode.payload.payload.red_players Numbers if entity @e[team=red,type=#projectile:players,tag=hb,distance=..7]

scoreboard players operation gamemode.payload.speed Numbers = gamemode.payload.payload.blue_players Numbers


execute as @n[type=pig,tag=payload] at @s if score gamemode.payload.payload.blue_players Numbers matches 1.. unless score gamemode.payload.payload.red_players Numbers matches 1.. run function gamemode:payload/payload_progress


function gamemode:payload/bossbar_update


execute unless entity @n[type=marker,tag=active_payload_path] unless entity @n[team=blue,type=#projectile:players,tag=hb,tag=winner] run function gamemode:blue_win

# Red Timer
scoreboard players remove timer Numbers 1
scoreboard players operation time Numbers = timer Numbers
function scoreboard:time

execute if score time.seconds Numbers matches 10.. run scoreboard players display numberformat TimeLeft display fixed [{score:{name:"time.minutes",objective:"Numbers"},color:red},":",{score:{name:"time.seconds",objective:"Numbers"}}]
execute unless score time.seconds Numbers matches 10.. run scoreboard players display numberformat TimeLeft display fixed [{score:{name:"time.minutes",objective:"Numbers"},color:red},":0",{score:{name:"time.seconds",objective:"Numbers"}}]

execute if score timer Numbers matches ..0 as @n[type=pig,tag=payload] at @s unless entity @p[team=blue,distance=..7] unless entity @n[type=#projectile:players,tag=hb,tag=winner] run function gamemode:red_win

# Respawning
tp @a[tag=in_game,scores={health=..0},team=blue] 6 195 -1 90 0
tp @a[tag=in_game,scores={health=..0},team=red] 10 195 -1 -90 0
scoreboard players add @a[tag=in_game,scores={health=..0}] i 1
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
#execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with minecraft:air
execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:comp/respawn/await


