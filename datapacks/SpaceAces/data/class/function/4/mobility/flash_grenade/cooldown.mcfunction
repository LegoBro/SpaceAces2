## Boost is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/mobility/flash_grenade_cooldown",minecraft:item_name={color:"white",translate:"class.mobility.flash_grenade"},minecraft:lore=[{color:"white","italic":false,translate:"class.mobility.flash_grenade.lore.1"},{color:"white",translate:"class.mobility.flash_grenade.lore.2"}]]

#execute if score @s ability.2.cooldown = class.mobility.2.duration Numbers run function class:4/mobility/boost/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary