## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/bomber/detonator_cooldown",minecraft:item_name={color:"white",translate:"class.bomber.detonator"},minecraft:lore=[{color:"white","italic":false,translate:"class.bomber.detonator.lore.1"},{color:"white",translate:"class.bomber.detonator.lore.2"}]]

execute if score @s ability.1.cooldown = class.bomber.1.duration Numbers run function class:4/bomber/detonator/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary_empty