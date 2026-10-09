#executed by an entity that a bot is targeting AND has a line-of-sight to
#executed at the position of the bot (at eye height!)


#downward arc
execute if score #bot_weapon_has_downward_arc sab.var matches 1 as e-0-0-0-1 at @s run \
    function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/adjust_rotation_for_projectile_arc

#upward arc
execute if score #bot_weapon_has_downward_arc sab.var matches -1 as e-0-0-0-1 at @s run \
    function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/adjust_rotation_for_projectile_arc_upward