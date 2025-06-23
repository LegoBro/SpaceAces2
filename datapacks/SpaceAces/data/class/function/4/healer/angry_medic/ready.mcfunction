## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="class/healer/angry_medic",minecraft:item_name={color:"white",translate:"class.healer.angry_medic"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.angry_medic.lore.1"},{color:"white",translate:"class.healer.angry_medic.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/healer/angry_medic/activate
