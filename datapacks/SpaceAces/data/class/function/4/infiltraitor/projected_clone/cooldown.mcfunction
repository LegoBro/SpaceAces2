## Atomic Shrink is on cooldown
item replace entity @s[tag=!invis] hotbar.4 with minecraft:gray_dye[item_model="class/infiltraitor/projected_clone_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.projected_clone"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.projected_clone.lore.0"},{color:"white",translate:"class.infiltraitor.projected_clone.lore.1"},{color:"white",translate:"class.infiltraitor.projected_clone.lore.2"}]]
item replace entity @s[tag=invis] hotbar.4 with minecraft:gray_dye[item_model="class/infiltraitor/invis/projected_clone_cooldown",minecraft:item_name={color:"white",translate:"class.infiltraitor.projected_clone"},minecraft:lore=[{color:"white","italic":false,translate:"class.infiltraitor.projected_clone.lore.0"},{color:"white",translate:"class.infiltraitor.projected_clone.lore.1"},{color:"white",translate:"class.infiltraitor.projected_clone.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/infiltraitor/projected_clone/deactivate
#scoreboard players remove @s ultimate.cooldown 1

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.infiltraitor.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate