## Wrist Rocket
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/healer/wrist_rocket",minecraft:item_name={color:"white",translate:"class.healer.wrist_rocket"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.wrist_rocket.lore.1"},{color:"white",translate:"class.healer.wrist_rocket.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/healer/wrist_rocket/activate
