#do navigation mode 3
scoreboard players set @s sab.botNavigationMode 3

#adopt move target
data modify entity @s data.move_targets prepend from storage sa_bots:generic target
function sa_bots:bot/waypoint_nav/update_target_scores

#don't path towards objects again for a while
scoreboard players set @s sab.botObjectCheckTime 110