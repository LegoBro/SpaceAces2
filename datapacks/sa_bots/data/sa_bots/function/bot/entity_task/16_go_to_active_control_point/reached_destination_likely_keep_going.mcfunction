execute store result score #random sab.var run random value 1..7
#less likely to keep doing task if less cooperative
execute if score @s sab.botCooperativeness matches 6..7 store result score #random sab.var run random value 1..8
execute if score @s sab.botCooperativeness matches 1..5 store result score #random sab.var run random value 1..9
#less likely if we're in defend or pick mode
execute if score @s sab.botGoal matches 2 run scoreboard players add #random sab.var 2
execute if score @s sab.botGoal matches 3 run scoreboard players add #random sab.var 1

#count how many teammates are capturing the point
scoreboard players set #count sab.var 0
execute if score @s Team matches 1 at @e[type=marker,tag=gamemode.setback.active_point,limit=1,sort=random] as @e[type=#projectile:has_hb,tag=sab.activePlayer,distance=..10,scores={Team=1}] run scoreboard players add #count sab.var 1
execute if score @s Team matches 2 at @e[type=marker,tag=gamemode.setback.active_point,limit=1,sort=random] as @e[type=#projectile:has_hb,tag=sab.activePlayer,distance=..10,scores={Team=2}] run scoreboard players add #count sab.var 1

#"push" goal: go directly to the point if less than 3 teammates are on the point
execute if entity @s[scores={sab.botGoal=1,sab.botCooperativeness=..2,Team=1..2}] if score #count sab.var matches ..0 run scoreboard players set #random sab.var 1
execute if entity @s[scores={sab.botGoal=1,sab.botCooperativeness=3..5,Team=1..2}] if score #count sab.var matches ..1 run scoreboard players set #random sab.var 1
execute if entity @s[scores={sab.botGoal=1,sab.botCooperativeness=6..,Team=1..2}] if score #count sab.var matches ..2 run scoreboard players set #random sab.var 1

#"defend" goal: go directly to the point if no teammates are on the point
execute if entity @s[scores={sab.botGoal=2,sab.botCooperativeness=3..,Team=1..2}] if score #count sab.var matches ..0 run scoreboard players set #random sab.var 1

#"pick" goal: go directly to the point if less than 2 teammates are on the point
execute if entity @s[scores={sab.botGoal=3,sab.botCooperativeness=..3,Team=1..2}] if score #count sab.var matches ..0 run scoreboard players set #random sab.var 1
execute if entity @s[scores={sab.botGoal=3,sab.botCooperativeness=4..,Team=1..2}] if score #count sab.var matches ..1 run scoreboard players set #random sab.var 1


#pick task
execute if score #random sab.var matches 1..3 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:16}
execute if score #random sab.var matches 4..5 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
execute if score #random sab.var matches 6.. run function sa_bots:bot/entity_task/_improvise_base_task