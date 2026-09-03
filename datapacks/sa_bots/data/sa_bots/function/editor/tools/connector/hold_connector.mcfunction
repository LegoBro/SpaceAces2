#figure out what we're looking at, and summon a temp marker there
scoreboard players operation #recursions sab.var = #TOOL_RAYCAST_RANGE sab.var
execute positioned ~ ~1.8 ~ positioned ^ ^ ^1 run function sa_bots:editor/utility/raycast_to_cursor

#particles highlight the thing we're looking at
execute at a-0-0-0-1 at @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] run particle block{block_state:"lime_concrete"} ~ ~.25 ~ 0.05 0.05 0.05 1 4 force @s
execute at a-0-0-0-1 run particle crit ~ ~ ~ 0.05 0.05 0.05 0 3 force @s

#if we have a source waypoint, draw a trail from the source to wherever we're pointing
execute if score @s sab.waypointReference matches 1.. run function sa_bots:editor/tools/connector/draw_trail_to_cursor

#use item
execute if score @s sab.carrotInput matches -2147483648..2147483647 unless score @s sab.inputCooldown matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpConnector1Way:1b}] run function sa_bots:editor/tools/connector/use_connector {mode:"1way"}
execute if score @s sab.carrotInput matches -2147483648..2147483647 unless score @s sab.inputCooldown matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wpConnector2Way:1b}] run function sa_bots:editor/tools/connector/use_connector {mode:"2way"}

#clean-up
kill a-0-0-0-1