#executed by player


#grab cursor position
data modify storage sa_bots:waypoint x set from entity a-0-0-0-1 Pos[0]
data modify storage sa_bots:waypoint y set from entity a-0-0-0-1 Pos[1]
data modify storage sa_bots:waypoint z set from entity a-0-0-0-1 Pos[2]

#run particle at location of source waypoint
execute store result storage uuid:in UUID[3] int 1 run scoreboard players get @s sab.waypointReference
function sa_uuid4:convert
data modify storage sa_bots:waypoint waypoint_target_string set from storage uuid:out plain
function sa_bots:editor/tools/connector/draw_trail_to_cursor_macro with storage sa_bots:waypoint