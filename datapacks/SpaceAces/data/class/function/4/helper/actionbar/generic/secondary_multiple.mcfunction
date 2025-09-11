## converts secondary to seconds for display
execute if score secondary Numbers matches 10.. run data modify storage player:actionbar secondary_spacer set value {translate: "space.-1"}
execute if score secondary Numbers matches ..9 run data modify storage player:actionbar secondary_spacer set value {translate: "space.4"}

data modify storage player:actionbar secondary set value {"score":{"name":"secondary","objective":"Numbers"},"font":"hud","type":"score","color":"aqua"}