## converts tertiary to seconds for display

execute if score tertiary Numbers matches 10.. run data modify storage player:actionbar tertiary_spacer set value {translate: "space.1"}
execute if score tertiary Numbers matches ..9 run data modify storage player:actionbar tertiary_spacer set value {translate: "space.6"}

data modify storage player:actionbar tertiary set value {"score":{"name":"tertiary","objective":"Numbers"},"font":"hud","type":"score","color":"aqua"}