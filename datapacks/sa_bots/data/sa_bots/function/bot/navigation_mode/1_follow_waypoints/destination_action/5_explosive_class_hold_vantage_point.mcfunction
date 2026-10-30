#executed by a bot that just reached a sniper spot with the intention of sniping
#executed at the position that the bot should pivot around


#need a marker to capture execution position
tp e-0-0-0-10 ~ ~ ~

#record our coordinates
data modify storage sa_bots:generic target.id set value 0
data modify storage sa_bots:generic target.uuid4 set value "0"
data modify storage sa_bots:generic target.x set from entity e-0-0-0-10 Pos[0]
data modify storage sa_bots:generic target.y set from entity e-0-0-0-10 Pos[1]
data modify storage sa_bots:generic target.z set from entity e-0-0-0-10 Pos[2]
#this is a sub-target that we want to stand next to for a while
data modify storage sa_bots:generic target.metadata.is_sub_route set value 2

#do navigation mode 3
scoreboard players set @s sab.botNavigationMode 3

#adopt move target
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores

#don't path towards objects again for a while
execute store result score @s sab.botObjectCheckTime run random value 160..400


#return marker to its home
tp e-0-0-0-10 0 50 0