## Burst Heal is on cooldown
item replace entity @s[tag=!invis] hotbar.2 with minecraft:gray_dye[item_model="class/infiltraitor/fused_detonator_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.fused_detonator"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.fused_detonator.lore.1"},{color:"white",translate:"class.infiltraitor.fused_detonator.lore.2"}]]
item replace entity @s[tag=invis] hotbar.2 with minecraft:gray_dye[item_model="class/infiltraitor/invis/fused_detonator_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.fused_detonator"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.fused_detonator.lore.1"},{color:"white",translate:"class.infiltraitor.fused_detonator.lore.2"}]]
execute if score @s ability.2.cooldown = class.infiltraitor.2.duration Numbers run function class:4/infiltraitor/fused_detonator/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary