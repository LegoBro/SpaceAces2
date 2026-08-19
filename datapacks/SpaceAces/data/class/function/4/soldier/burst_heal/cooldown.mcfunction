## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/soldier/burst_heal_cooldown",minecraft:item_name={color:"white",translate:"class.soldier.burst_heal"},minecraft:lore=[{color:"white","italic":false,translate:"class.soldier.burst_heal.lore.1"},{color:"white",translate:"class.soldier.burst_heal.lore.2"}]]
execute if score @s ability.2.cooldown >= class.soldier.2.duration Numbers run function class:4/soldier/burst_heal/burst_healing
execute if score @s ability.2.cooldown = class.soldier.2.duration Numbers run function class:4/soldier/burst_heal/deactivate
scoreboard players remove @s ability.2.cooldown 1
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/soldier/left_arm",item_name="",tooltip_display={hide_tooltip:true}]

function class:4/helper/actionbar/generic/tertiary