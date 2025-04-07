## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="class/bomber/detonator",minecraft:item_name={color:"white",translate:"detonator"},minecraft:lore=[{color:"white","italic":false,translate:"detonator_lore1"},{color:"white",translate:"detonator_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/bomber/detonator/activate
