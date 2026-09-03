## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/scientist/cascade_cooldown",minecraft:item_name={color:"white",translate:"class.scientist.cascade"},minecraft:lore=[{color:"white","italic":false,translate:"class.scientist.cascade.lore.1"},{color:"white",translate:"class.scientist.cascade.lore.2"}]]
execute if score @s SelectedItem matches 1 run item replace entity @s weapon.offhand with emerald[item_model="class/scientist/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s ability.1.cooldown = class.scientist.1.duration Numbers run function class:4/scientist/cascade/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary