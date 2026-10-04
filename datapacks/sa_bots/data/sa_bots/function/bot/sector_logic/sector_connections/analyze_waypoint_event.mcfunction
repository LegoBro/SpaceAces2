#ability-dependent conditional
$execute if score #set_event sab.var matches 2..9 unless score #set_event sab.var matches 4 \
    unless data storage sa_bots:waypoint sector_conditional_events[$(sector)].list[{movement_gated:1}] run data modify storage sa_bots:waypoint sector_conditional_events[$(sector)].list append value {movement_gated:1}

#6-block-jump conditional
$execute if score #set_event sab.var matches 5 unless score #set_event sab.var matches 4 \
    unless data storage sa_bots:waypoint sector_conditional_events[$(sector)].list[{6_block_jump_gated:1}] run data modify storage sa_bots:waypoint sector_conditional_events[$(sector)].list append value {6_block_jump_gated:1}

#map-dependent conditional
$execute if score #set_event sab.var matches 10 unless score #set_event sab.var matches 4 \
    unless data storage sa_bots:waypoint sector_conditional_events[$(sector)].list[{map_gated:1}] run data modify storage sa_bots:waypoint sector_conditional_events[$(sector)].list append value {map_gated:1}

#slow way to navigate...
$execute if score #set_event sab.var matches 4 unless score #set_event sab.var matches 4 \
    unless data storage sa_bots:waypoint sector_conditional_events[$(sector)].list[{slow_route:1}] run data modify storage sa_bots:waypoint sector_conditional_events[$(sector)].list append value {slow_route_if_tall:1}
