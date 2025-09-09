## converts ult to seconds for display

scoreboard players operation #class.ult_current Numbers = @s ultimate.cooldown
scoreboard players add #class.ult_current Numbers 20
scoreboard players operation #class.ult_current Numbers /= 20 Numbers
execute if score #class.ult_current Numbers matches 10.. run data modify storage player:actionbar ult_spacer set value {translate: "space.1"}
execute if score #class.ult_current Numbers matches ..9 run data modify storage player:actionbar ult_spacer set value {translate: "space.6"}

data modify storage player:actionbar ult set value {"score":{"name":"#class.ult_current","objective":"Numbers"},"font":"hud","type":"score"}