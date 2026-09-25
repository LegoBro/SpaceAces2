#executed by the entity our bot is targeting

#...ok, so our end target is an entity which we aren't allowed to move (reason: "anchored eyes" for headshots)
#so we must give any offsets to e-0-0-0-1 instead
#and these offsets must be applied in the negative to get the same output angle


#capture entity coordinates so we can compare to what we saw last time
scoreboard players set #observe_player sab.var 1
execute store result score #observe_x sab.var run data get entity @s Pos[0] 100
execute store result score #observe_z sab.var run data get entity @s Pos[2] 100

#lead the shot by a lot if we're using a slow-moving projectile
execute if score #var sab.var matches ..99 unless score #bot_observed_x sab.var matches 0 \
    if score #bot_lead_shot sab.var matches 1 if score #bot_weapon_slow_projectile sab.var matches 1 \
    run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/lead_shot_big
#lead the shot slightly if using hitscan
execute if score #var sab.var matches ..99 unless score #bot_observed_x sab.var matches 0 \
    if score #bot_lead_shot sab.var matches 1 unless score #bot_weapon_slow_projectile sab.var matches 1 \
    run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/lead_shot_slight

#shoot floor
execute if score #var sab.var matches ..99 \
    if score #bot_shoot_floor sab.var matches 1 \
    at e-0-0-0-1 run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/move_to_floor