## Wrist Rocket
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/healer/wrist_rocket",minecraft:item_name={color:"white",translate:"class.healer.wrist_rocket"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.wrist_rocket.lore.1"},{color:"white",translate:"class.healer.wrist_rocket.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/healer/left_arm_rocket",item_name="",tooltip_display={hide_tooltip:true}]

execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/healer/wrist_rocket/activate
function class:4/helper/actionbar/generic/tertiary_empty