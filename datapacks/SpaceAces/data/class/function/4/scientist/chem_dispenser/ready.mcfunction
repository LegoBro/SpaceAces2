## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="class/scientist/chem_dispenser",minecraft:item_name={color:"white",translate:"class.scientist.chem_dispenser"},minecraft:lore=[{color:"white","italic":false,translate:"class.scientist.chem_dispenser.lore.1"},{color:"white",translate:"class.scientist.chem_dispenser.lore.2"}],tooltip_display={hidden_components:["unbreakable"]},max_stack_size=64,!max_damage]
#item modify entity @s hotbar.1 class:stack_size
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/scientist/chem_dispenser/activate
