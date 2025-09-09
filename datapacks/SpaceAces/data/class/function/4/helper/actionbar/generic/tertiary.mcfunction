## converts tertiary to seconds for display
scoreboard players operation tertiary Numbers = @s ability.2.cooldown
execute if score @s ability.2.cooldown matches 1 run playsound minecraft:block.stone_pressure_plate.click_off master @s ~ ~ ~ 1 1 0
scoreboard players add tertiary Numbers 20
scoreboard players operation tertiary Numbers /= 20 Numbers
execute if score tertiary Numbers matches 10.. run data modify storage player:actionbar tertiary_spacer set value {translate: "space.1"}
execute if score tertiary Numbers matches ..9 run data modify storage player:actionbar tertiary_spacer set value {translate: "space.6"}

data modify storage player:actionbar tertiary set value {"score":{"name":"tertiary","objective":"Numbers"},"font":"hud","type":"score","color":"aqua"}