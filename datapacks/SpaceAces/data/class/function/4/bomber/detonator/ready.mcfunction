## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="class/bomber/detonator",minecraft:item_name={color:"white",translate:"class.bomber.detonator"},minecraft:lore=[{color:"white","italic":false,translate:"class.bomber.detonator.lore.1"},{color:"white",translate:"class.bomber.detonator.lore.2"}],tooltip_display={hidden_components:["unbreakable"]},max_stack_size=64,!max_damage]
#item modify entity @s hotbar.1 class:stack_size
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/bomber/detonator/activate
function class:4/helper/actionbar/generic/secondary