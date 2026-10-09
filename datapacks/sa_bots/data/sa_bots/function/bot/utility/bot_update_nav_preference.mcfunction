#based on sector information and our Class' abilities, determine if we should be using unconditional nav
#"sab.botUsingUnconditionalNav"
# 0 = no
# 1 = yes
# 1 = yes, but give up if something goes wrong
scoreboard players set #var sab.var 0

#look up the data from our sector
execute if score @s sab.botInSector matches 1 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[1]
execute if score @s sab.botInSector matches 2 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[2]
execute if score @s sab.botInSector matches 3 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[3]
execute if score @s sab.botInSector matches 4 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[4]
execute if score @s sab.botInSector matches 5 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[5]
execute if score @s sab.botInSector matches 6 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[6]
execute if score @s sab.botInSector matches 7 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[7]
execute if score @s sab.botInSector matches 8 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[8]
execute if score @s sab.botInSector matches 9 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[9]
execute if score @s sab.botInSector matches 10 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[10]
execute if score @s sab.botInSector matches 11 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[11]
execute if score @s sab.botInSector matches 12 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[12]
execute if score @s sab.botInSector matches 13 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[13]
execute if score @s sab.botInSector matches 14 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[14]
execute if score @s sab.botInSector matches 15 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[15]
execute if score @s sab.botInSector matches 16 run data modify storage sa_bots:generic get_sector_flags set from storage sa_bots:waypoint sector_conditional_events[16]
#no sector? quit out and don't use conditional nav
execute unless score @s sab.botInSector matches 1..16 run return run scoreboard players set @s sab.botUsingUnconditionalNav 0
#=====

#sneak under stuff?
execute if score @s size matches ..109 if data storage sa_bots:generic get_sector_flags.list[{slow_route:1}] run scoreboard players set #var sab.var 2
#tall bots usually prefer not to sneak under stuff
execute if score @s size matches 110.. if score @s sab.botUsingUnconditionalNav matches 0 if function sa_bots:bot/utility/random_chance_33_percent \
    if data storage sa_bots:generic get_sector_flags.list[{slow_route:1}] run scoreboard players set #var sab.var 2

#6-block high wall
execute if entity @s[tag=sab.botHas6BlockJump] if data storage sa_bots:generic get_sector_flags.list[{6_block_jump_gated:1}] run scoreboard players set #var sab.var 2

#movement-gated?
execute if entity @s[tag=sab.botHasMovementAbilities] if data storage sa_bots:generic get_sector_flags.list[{movement_gated:1}] run scoreboard players set #var sab.var 2

#map-gated?
execute if data storage sa_bots:generic get_sector_flags.list[{map_gated:1}] run scoreboard players set #var sab.var 2


#apply new nav settings
scoreboard players operation @s sab.botUsingUnconditionalNav = #var sab.var