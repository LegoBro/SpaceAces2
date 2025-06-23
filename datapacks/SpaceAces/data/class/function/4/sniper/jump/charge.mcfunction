## Charges power boots when holding sneak
scoreboard players add @s passive.cooldown 1

execute if score @s passive.cooldown matches ..5 run effect give @s jump_boost 1 0 true
execute if score @s passive.cooldown matches ..5 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 1

execute if score @s passive.cooldown matches 6..10 run effect give @s jump_boost 1 1 true
execute if score @s passive.cooldown matches 6..10 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 2

execute if score @s passive.cooldown matches 11..15 run effect give @s jump_boost 1 2 true
execute if score @s passive.cooldown matches 11..15 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 3

execute if score @s passive.cooldown matches 16..20 run effect give @s jump_boost 1 3 true
execute if score @s passive.cooldown matches 16..20 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 4

execute if score @s passive.cooldown matches 21..25 run effect give @s jump_boost 1 4 true
execute if score @s passive.cooldown matches 21..25 run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 5

execute if score @s passive.cooldown matches 26.. run effect give @s jump_boost 1 5 true
execute if score @s passive.cooldown matches 26.. run item replace entity @s hotbar.3 with minecraft:stone[minecraft:item_model="class/sniper/jump",minecraft:item_name={color:"white",translate:"class.sniper.jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.jump.lore.1"},{color:"white",translate:"class.sniper.jump.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}] 6