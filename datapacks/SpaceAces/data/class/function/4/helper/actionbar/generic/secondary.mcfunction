## converts secondary to seconds for display
scoreboard players operation secondary Numbers = @s ability.1.cooldown
execute if score @s ability.1.cooldown matches 1 run playsound minecraft:block.stone_pressure_plate.click_off master @s ~ ~ ~ 1 2 0
scoreboard players add secondary Numbers 20
scoreboard players operation secondary Numbers /= 20 Numbers
execute if score secondary Numbers matches 10.. run data modify storage player:actionbar secondary_spacer set value {translate: "space.-1"}
execute if score secondary Numbers matches ..9 run data modify storage player:actionbar secondary_spacer set value {translate: "space.4"}

data modify storage player:actionbar secondary set value {"score":{"name":"secondary","objective":"Numbers"},"font":"hud","type":"score","color":"gray"}