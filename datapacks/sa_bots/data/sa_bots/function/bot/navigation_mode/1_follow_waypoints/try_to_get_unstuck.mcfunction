#go into "roam" mode
execute if score @s sab.botSkill matches ..4 run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets
execute if score @s sab.botSkill matches 5.. run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately