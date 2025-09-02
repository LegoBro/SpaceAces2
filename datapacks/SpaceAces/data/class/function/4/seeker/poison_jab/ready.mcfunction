## Poison Dart ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/seeker/poison_jab",minecraft:item_name={color:"white",translate:"class.seeker.poison_jab"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.poison_jab.lore.1"},{color:"white",translate:"class.seeker.poison_jab.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/seeker/poison_jab/activate

## Multiple Uses

execute unless score @s ability.1.cooldown < class.seeker.1.minCooldown Numbers run scoreboard players remove @s ability.1.cooldown 1

## Display Charges
scoreboard players operation secondary Numbers = @s ability.1.cooldown
scoreboard players operation secondary Numbers -= class.seeker.1.cooldown Numbers
scoreboard players operation secondary Numbers /= -1 Numbers

scoreboard players operation secondary Numbers /= class.seeker.1.cooldown Numbers

execute if score secondary Numbers matches 10.. run data modify storage player:actionbar secondary_spacer set value {translate: "space.1"}
execute if score secondary Numbers matches ..9 run data modify storage player:actionbar secondary_spacer set value {translate: "space.6"}

data modify storage player:actionbar secondary set value {"score":{"name":"secondary","objective":"Numbers"},"font":"secondary","type":"score"}