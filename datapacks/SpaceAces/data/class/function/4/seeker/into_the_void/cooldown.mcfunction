## Atomic Shrink is on cooldown
item replace entity @s[tag=!invis] hotbar.4 with minecraft:gray_dye[item_model="class/seeker/into_the_void_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.into_the_void"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.into_the_void.lore.0"},{color:"white",translate:"class.seeker.into_the_void.lore.1"},{color:"white",translate:"class.seeker.into_the_void.lore.2"}]]
item replace entity @s[tag=invis] hotbar.4 with minecraft:gray_dye[item_model="class/seeker/invis/into_the_void_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.into_the_void"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.into_the_void.lore.0"},{color:"white",translate:"class.seeker.into_the_void.lore.1"},{color:"white",translate:"class.seeker.into_the_void.lore.2"}]]
execute if score @s[tag=!invis] SelectedItem matches 4 run item replace entity @s weapon.offhand with emerald[item_model="class/seeker/left_arm_watch",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s ultimate.cooldown matches 1.. run function class:4/seeker/into_the_void/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.seeker.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate