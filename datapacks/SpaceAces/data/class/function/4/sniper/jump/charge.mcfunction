## Charges power boots when holding sneak
scoreboard players add @s passive.cooldown 1

scoreboard players operation #jump Numbers = @s passive.cooldown
scoreboard players operation #jump Numbers /= class.sniper.passive.step_charge Numbers


execute if score #jump Numbers matches ..1 run effect give @s jump_boost 1 0 true
execute if score #jump Numbers matches ..1 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 1

execute if score #jump Numbers matches 2 run effect give @s jump_boost 1 1 true
execute if score #jump Numbers matches 2 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 2

execute if score #jump Numbers matches 3 run effect give @s jump_boost 1 2 true
execute if score #jump Numbers matches 3 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 3

execute if score #jump Numbers matches 4 run effect give @s jump_boost 1 3 true
execute if score #jump Numbers matches 4 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 4

execute if score #jump Numbers matches 5 run effect give @s jump_boost 1 4 true
execute if score #jump Numbers matches 5 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 5

execute if score #jump Numbers matches 6.. run effect give @s jump_boost 1 5 true
execute if score #jump Numbers matches 6.. run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/exo_boots",minecraft:item_name={color:"white",translate:"class.sniper.exo_boots"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.exo_boots.lore.1"},{color:"white",translate:"class.sniper.exo_boots.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}] 6