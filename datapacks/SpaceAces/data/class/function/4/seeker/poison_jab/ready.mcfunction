## Poison Dart ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/seeker/poison_jab",minecraft:item_name={color:"white",translate:"class.seeker.poison_jab"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.poison_jab.lore.1"},{color:"white",translate:"class.seeker.poison_jab.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/seeker/poison_jab/activate

## Multiple Uses

execute unless score @s ability.1.cooldown < class.seeker.1.minCooldown Numbers run scoreboard players remove @s ability.1.cooldown 1