## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/pyro/adaptive_plating_cooldown",minecraft:item_name={color:"white",translate:"class.pyro.adaptive_plating"},minecraft:lore=[{color:"white",italic:false ,translate:"class.pyro.adaptive_plating.lore.1"},{color:"white",italic:false ,translate:"class.pyro.adaptive_plating.lore.2"}]]
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/pyro/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s ability.2.cooldown = class.pyro.2.duration Numbers run function class:4/pyro/adaptive_plating/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary