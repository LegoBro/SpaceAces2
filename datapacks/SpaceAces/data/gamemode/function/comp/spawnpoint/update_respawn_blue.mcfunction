# Move spawnpoint Timings
execute store result score #test_respawn_time Numbers run data get entity @n[type=marker,tag=blue_spawn_point,scores={gamemode.spawnpoint.progress=0}] data.respawn_time

# if not set or 0, ignore
execute unless score #test_respawn_time Numbers matches 1.. run return 0

# Apply
scoreboard players operation gamemode.respawn.time.blue Numbers = #test_respawn_time Numbers
function gamemode:comp/respawn/apply_time/blue