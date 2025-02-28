scoreboard players remove activePoint Numbers 1

function gamemode:setback/update_captured_point

execute if score activePoint Numbers matches ..-1 unless entity @a[tag=winner] run function gamemode:blue_win