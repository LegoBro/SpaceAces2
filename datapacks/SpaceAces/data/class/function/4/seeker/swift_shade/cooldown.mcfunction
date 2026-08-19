## Burst Heal is on cooldown
item replace entity @s[tag=!invis] hotbar.2 with minecraft:gray_dye[item_model="class/seeker/swift_shade_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.swift_shade"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.swift_shade.lore.1"},{color:"white",translate:"class.seeker.swift_shade.lore.2"}]]
item replace entity @s[tag=invis] hotbar.2 with minecraft:gray_dye[item_model="class/seeker/invis/swift_shade_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.swift_shade"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.swift_shade.lore.1"},{color:"white",translate:"class.seeker.swift_shade.lore.2"}]]
execute if score @s[tag=!invis] SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/seeker/left_arm_watch",item_name="",tooltip_display={hide_tooltip:true}]
execute if score @s ability.2.cooldown >= class.seeker.2.duration Numbers run function class:4/seeker/swift_shade/active
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary