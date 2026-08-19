## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/scout/dodge_cooldown",minecraft:item_name={color:"white",translate:"class.scout.dodge"},minecraft:lore=[{color:"white","italic":false,translate:"class.scout.dodge.lore.0"},{color:"white",translate:"class.scout.dodge.lore.1"},{color:"white",translate:"class.scout.dodge.lore.2"}]]

execute if score @s ability.1.cooldown = class.scout.1.duration Numbers run function class:4/scout/boost/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary