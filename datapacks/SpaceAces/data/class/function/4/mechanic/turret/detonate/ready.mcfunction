## Detonate
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/mechanic/deconstruct",minecraft:item_name={color:"white",translate:"class.mechanic.deconstruct"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.deconstruct.lore.1"},{color:"white",translate:"class.mechanic.deconstruct.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/mechanic/turret/detonate
