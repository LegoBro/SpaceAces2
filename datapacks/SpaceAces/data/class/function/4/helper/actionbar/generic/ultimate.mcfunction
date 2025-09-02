## converts ult to seconds for display

scoreboard players operation #class.ult_current Numbers *= 100 Numbers
scoreboard players operation #class.ult_current Numbers /= #class.ult_max Numbers


execute if score #class.ult_current Numbers matches 10.. run data modify storage player:actionbar ult_spacer set value {translate: "space.1"}
execute if score #class.ult_current Numbers matches ..9 run data modify storage player:actionbar ult_spacer set value {translate: "space.6"}

data modify storage player:actionbar ult set value {"score":{"name":"#class.ult_current","objective":"Numbers"},"font":"ammo","type":"score"}