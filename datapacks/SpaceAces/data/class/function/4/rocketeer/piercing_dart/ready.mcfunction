## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="class/rocketeer/piercing_dart",minecraft:item_name={color:"white",translate:"class.rocketeer.piercing_dart"},minecraft:lore=[{color:"white","italic":false,translate:"detonator_lore1"},{color:"white",translate:"detonator_lore2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/rocketeer/piercing_dart/activate
