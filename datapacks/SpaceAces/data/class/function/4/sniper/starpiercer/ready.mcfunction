## Vis Mine
item replace entity @s hotbar.1 with minecraft:spyglass[minecraft:item_model="class/sniper/starpiercer",minecraft:item_name={color:"white",translate:"class.sniper.starpiercer"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.starpiercer.lore.1"},{color:"white",translate:"class.sniper.starpiercer.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

execute unless entity @s[tag=input.right_click] run scoreboard players set @s ability.1.cooldown 0
attribute @s[scores={ability.1.cooldown=0..}] jump_strength modifier remove class.sniper.scope

execute if score @s SelectedItem matches 1 if entity @s[tag=input.right_click] run function class:4/sniper/starpiercer/charging
