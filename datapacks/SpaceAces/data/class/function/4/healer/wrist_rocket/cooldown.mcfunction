## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/healer/wrist_rocket_cooldown",minecraft:item_name={color:"white",translate:"class.healer.wrist_rocket"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.wrist_rocket.lore.1"},{color:"white",translate:"class.healer.wrist_rocket.lore.2"}]]
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/healer/left_arm",item_name="",tooltip_display={hide_tooltip:true}]

execute if score @s ability.2.cooldown = class.healer.2.duration Numbers run function class:4/healer/wrist_rocket/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary