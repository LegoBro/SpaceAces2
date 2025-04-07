## Boost is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/scout/boost",minecraft:item_name={color:"white",translate:"boost"},minecraft:lore=[{color:"white","italic":false,translate:"boost_lore1"},{color:"white",translate:"boost_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/scout/boost/activate
