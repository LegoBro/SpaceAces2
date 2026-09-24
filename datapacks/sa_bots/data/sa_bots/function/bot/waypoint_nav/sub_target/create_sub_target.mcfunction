#executed by bot
#executed at the exact position we want to place a sub-target


#Earl, come back here again
tp e-0-0-0-1 ~ ~ ~
execute unless block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run tp e-0-0-0-1 ~ ~1 ~


#we did it
scoreboard players set #found_target sab.var 1

#now record our coordinates
data modify storage sa_bots:generic target.uuid4 set value "0"
data modify storage sa_bots:generic target.x set from entity e-0-0-0-1 Pos[0]
data modify storage sa_bots:generic target.y set from entity e-0-0-0-1 Pos[1]
data modify storage sa_bots:generic target.z set from entity e-0-0-0-1 Pos[2]

#this is a sub-target
data modify storage sa_bots:generic target.metadata.is_sub_route set value 1


#adopt data and scores from recently decided-upon target
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores

#ok, we did it. please don't generate a million extra move targets for no reason
scoreboard players set @s sab.botLookingForSubTargets 2