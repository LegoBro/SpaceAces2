## Detonator is ready
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="class/rocketeer/rocket_wall",minecraft:item_name={color:"white",translate:"class.rocketeer.rocket_wall"},minecraft:lore=[{color:"white","italic":false,translate:"class.rocketeer.rocket_wall.lore.1"},{color:"white",translate:"class.rocketeer.rocket_wall.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/rocketeer/rocket_wall/activate
