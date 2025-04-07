## Burst Heal
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/gunner/large_heal",minecraft:item_name={color:"white",translate:"class.gunner.large_heal"},minecraft:lore=[{color:"white","italic":false,translate:"class.gunner.large_heal"},{color:"white",translate:"burst_heal_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/gunner/large_heal/activate
