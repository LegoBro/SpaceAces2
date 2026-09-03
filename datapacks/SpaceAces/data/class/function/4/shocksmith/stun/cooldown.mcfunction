## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/shocksmith/stun_cooldown",minecraft:item_name={color:"white",translate:"class.shocksmith.stun"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.stun.lore.1"},{color:"white",translate:"class.shocksmith.stun.lore.2"}]]
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/shocksmith/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s ability.2.cooldown = class.shocksmith.2.duration Numbers run function class:4/shocksmith/stun/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary