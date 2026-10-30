#activePoint goes up when blue gets a capture (#test sab.var = 1..)
#activePoint goes down when red gets a capture (#test sab.var = ..-1)


#some slight randomness
execute store result score #random sab.var run random value 1..5

#bot trying to defend will go to the next point when they lose a control point
execute if score #test sab.var matches ..-1 if entity @s[scores={Team=1,sab.botGoal=2,sab.botSkill=2..}] run return run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
execute if score #test sab.var matches 1.. if entity @s[scores={Team=2,sab.botGoal=2,sab.botSkill=2..}] run return run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
#=====

#same for push, but less likely
execute if score #test sab.var matches ..-1 if entity @s[scores={Team=1,sab.botGoal=1,sab.botSkill=2..}] if score #random sab.var matches ..3 run return run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
execute if score #test sab.var matches 1.. if entity @s[scores={Team=2,sab.botGoal=1,sab.botSkill=2..}] if score #random sab.var matches ..3 run return run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
#=====

#high skill bot will rush to the next point if trying to push
execute if entity @s[scores={sab.botGoal=1,sab.botSkill=7..}] \
    if score #random sab.var matches ..3 run return run function sa_bots:bot/entity_task/switch_base_task_macro {choice:17}
#=====

#really high skill bot will rush to the next point if trying to pick
execute if entity @s[scores={sab.botGoal=3,sab.botSkill=9..}] \
    if score #random sab.var matches ..4 run return run function sa_bots:bot/entity_task/switch_base_task_macro {choice:17}
#=====

#moderate to high skill bot will rush to the next point if they have followers
execute if entity @s[scores={sab.botFollowers=1..,sab.botSkill=4..}] run return run function sa_bots:bot/entity_task/switch_base_task_macro {choice:17}