## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/mobility/warp_cooldown",minecraft:item_name={color:"white",translate:"class.mobility.warp"},minecraft:lore=[{color:"white","italic":false,translate:"class.mobility.warp.lore.1"},{color:"white",translate:"class.mobility.warp.lore.2"}]]

execute if score @s SelectedItem matches 1 run item replace entity @s weapon.offhand with emerald[item_model="class/mobility/left_arm",item_name="",tooltip_display={hide_tooltip:true}]

execute if score @s ability.1.cooldown = class.mobility.1.duration Numbers run function class:4/mobility/warp/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary