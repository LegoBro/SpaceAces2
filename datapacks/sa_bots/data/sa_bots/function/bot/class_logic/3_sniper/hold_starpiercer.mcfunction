#executed by bot at 10Hz
#executed when we have a target 15+ blocks away


#hold starpiercer
scoreboard players set @s SelectedItem 1
tag @s add input.right_click

#move slower while scoped in
attribute @s movement_speed modifier add firing_slowdown -0.6 add_multiplied_total

#figure out how close we are to max charge
scoreboard players operation #test sab.var = class.sniper.1.maxDamage Numbers
scoreboard players operation #test sab.var -= @s ability.1.cooldown

#shoot at people
execute if entity @s[scores={sab.botSkill=..4,sab.lockedOntoEnemy=2..}] if score #test sab.var matches -30.. run tag @s add input.jump
execute if entity @s[scores={sab.botSkill=5..6,sab.lockedOntoEnemy=3..}] if score #test sab.var matches -20.. run tag @s add input.jump
execute if entity @s[scores={sab.botSkill=7..8,sab.lockedOntoEnemy=4..}] if score #test sab.var matches -10.. run tag @s add input.jump
execute if entity @s[scores={sab.botSkill=9..10,sab.lockedOntoEnemy=4..}] if score #test sab.var matches 0.. run tag @s add input.jump

#can't jump while scoped in!
scoreboard players set @s sab.botJumpCooldown 5

#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.sniper.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=1..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/use_ultimate
