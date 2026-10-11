#if not in navigation mode 1 or 2, do 1
execute unless score @s sab.botNavigationMode matches 1..2 run scoreboard players set @s sab.botNavigationMode 1

#adopt move target
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores

#don't path towards objects again for a while
scoreboard players set @s sab.botObjectCheckTime 110