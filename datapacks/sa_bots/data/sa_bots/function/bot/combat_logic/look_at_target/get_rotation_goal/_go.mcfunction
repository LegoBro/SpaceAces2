#executed by an entity that a bot is targeting AND has a line-of-sight to
#executed at the position of the bot

#relevant variables set by bot:
# #skill
# #team
# #bot_weapon_has_downward_arc
# #bot_weapon_slow_projectile
# #bot_lead_shot
# #bot_shoot_floor


#must be in a loaded chunk!
execute unless loaded ~ ~ ~ run return fail
#=====

#we exist if we ran this function
scoreboard players set #found_target sab.var 2
scoreboard players set #observe_player sab.var 0
#look only?
execute if entity @s[tag=sab.possibleTargetSeeOnly] run scoreboard players set #found_target sab.var 3

#this little fellow will grab rotation data for us
tp e-0-0-0-1 ~ ~ ~

#grab the angle we want in order to face the target
#---------------------
#\/ stuff that can move (we might want to lead our shots) \/
#player (or any fallback object)
scoreboard players set #var sab.var 0
#player: go for headshot
execute if score #skill sab.var matches 6.. if entity @s[type=#projectile:players] run scoreboard players set #var sab.var 1
#teammate player (shoot body, not head)
execute if score #var sab.var matches 1 if score @s Team = #team sab.var run scoreboard players set #var sab.var 0
#\/ stuff that doesn't move (or at least not very quickly) \/
execute if entity @s[tag=hb_mechanic_turret] run scoreboard players set #var sab.var 101
execute if entity @s[tag=chem_dispenser] run scoreboard players set #var sab.var 102
execute if entity @s[tag=rocket_wall] run scoreboard players set #var sab.var 103
execute if entity @s[tag=vis_mine] run scoreboard players set #var sab.var 104

#are we looking at something that can move? apply offsets to lead shots, shoot at floor, or whatever
execute if score #var sab.var matches ..99 if entity @s[type=#projectile:players] run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/consider_applying_offsets

#this is the place to add variation depending on the target's height!
#(higher y means we aim lower down)
execute if score #var sab.var matches 0 at e-0-0-0-1 positioned ~ ~-.7 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 1 at e-0-0-0-1 facing entity @s eyes run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 101 positioned ~ ~.5 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 102 positioned ~ ~-.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 103 positioned ~ ~.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 104 positioned ~ ~.6 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~

#if we're using a projectile with a strong downward arc (like grenades), aim upward based on LOS distance
execute if score #bot_weapon_has_downward_arc sab.var matches 1 as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/adjust_rotation_for_projectile_arc
#---------------------

#output
execute as e-0-0-0-1 store result score #yaw_target sab.var run data get entity @s Rotation[0] 100
scoreboard players operation #yaw_target sab.var %= #36000 sab.var
execute as e-0-0-0-1 store result score #pitch_target sab.var run data get entity @s Rotation[1] 100

#clean-up
tp e-0-0-0-1 0 0 0
tag @s remove sab.possibleTarget
tag @s remove sab.possibleTargetSeeOnly