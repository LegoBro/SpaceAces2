## Burst Heal is on cooldown
item replace entity @s[tag=!invis] hotbar.1 with minecraft:gray_dye[item_model="class/infiltraitor/cloak_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.cloak"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.cloak.lore.1"},{color:"white",translate:"class.infiltraitor.cloak.lore.2"},{color:"white",translate:"class.infiltraitor.cloak.lore.3"}]]
item replace entity @s[tag=invis] hotbar.1 with minecraft:gray_dye[item_model="class/infiltraitor/invis/cloak_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.cloak"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.cloak.lore.1"},{color:"white",translate:"class.infiltraitor.cloak.lore.2"},{color:"white",translate:"class.infiltraitor.cloak.lore.3"}]]
execute if score @s ability.1.cooldown = class.infiltraitor.1.duration Numbers run function class:4/infiltraitor/cloak/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary