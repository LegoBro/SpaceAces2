#executed by the entity our bot is targeting
#executed at the position of the bot (at eye height!)

#...ok, so our end target is an entity which we aren't allowed to move (reason: "anchored eyes" for headshots)
#so we must give any offsets to e-0-0-0-1 instead
#and these offsets must be applied in the negative to get the same output angle


#use "test" to track whether we applied an offset
scoreboard players set #test sab.var 0

#capture entity coordinates so we can compare to what we saw last time
scoreboard players set #observe_player sab.var 1
execute store result score #observe_x sab.var run data get entity @s Pos[0] 100
execute store result score #observe_z sab.var run data get entity @s Pos[2] 100

#lead the shot by a lot if we're using a slow-moving projectile
execute unless score #bot_observed_x sab.var matches 0 \
    if score #bot_lead_shot sab.var matches 1 if score #bot_weapon_slow_projectile sab.var matches 1 \
    run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/lead_shot_big
#lead the shot slightly if using hitscan
execute unless score #bot_observed_x sab.var matches 0 \
    if score #bot_lead_shot sab.var matches 1 unless score #bot_weapon_slow_projectile sab.var matches 1 \
    run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/lead_shot_slight

#shoot floor beneath the target if instructed to do so
execute if score #bot_shoot_floor sab.var matches 1 \
    at e-0-0-0-1 run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/move_to_floor



#if we applied offsets, we must check that our new ray can still travel the full distance without being stopped
execute if score #test sab.var matches 1 run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/validate_ray_offset