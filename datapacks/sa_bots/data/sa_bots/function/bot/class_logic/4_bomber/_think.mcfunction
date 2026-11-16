#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0


#when reloading, use smokescreen
execute if entity @s[tag=sab.botShootingActiveOpponent,scores={reload=1..,ability.2.cooldown=..0,sab.lockedOntoEnemy=2..}] run function sa_bots:bot/class_logic/use_ability_2

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..6,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1



#shoot stickybombs at saved coordinates when instructed to do so
execute if entity @s[tag=!sab.botJumpNextLedge,scores={SelectedItem=0,sab.botShootStickyBombQuota=1..,sab.botTargetLastSeenX=-2147483648..2147483647,reload=..0,sab.botMoveState=0..1}] \
    unless score @s sab.botLookMode matches 2 unless score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/shoot_stickybomb_at_last_seen_position
#todo: make logic for bots shooting stickybombs at choke points, control points, etc


#detonate stickies when we see enemies are near them (note: only 5+ skill bots will pay attention to any stickybombs!)
execute if entity @s[scores={sab.botWantsToDetonateStickyBomb=1000..}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely \
    unless score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/detonate_sticky_bombs
#lower skill bot will just detonate them when reloading
execute if entity @s[scores={sab.botSkill=..4,ability.1.cooldown=1..,reload=1..}] \
    unless score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/detonate_sticky_bombs

#panic and detonate all sticky bombs when on very low health
execute if entity @s[scores={displayHealth=..10,sab.botWantsToDetonateStickyBomb=1..}] unless score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/detonate_sticky_bombs



#shoot primary fire when we see someone
execute if entity @s[scores={SelectedItem=0,sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1


#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.bomber.ultimate.charge Numbers \
    if entity @s[tag=sab.botShootingActiveOpponent,scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/4_bomber/use_ultimate

#all weapons require leading shots and arcs
tag @s[scores={sab.botSkill=2..}] add sab.botWeaponHasDownwardArc
tag @s[scores={sab.botSkill=7..}] add sab.botShootAtFloor
tag @s add sab.botWeaponSlowProjectile


#override behavior when doing a scripted action
execute if score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/scripted_actions

#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -59 0 container.0
