item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.25d}]},minecraft:dyed_color={rgb:11908533},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.1d}]},minecraft:dyed_color={rgb:11908533},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

execute if entity @s[scores={ability.1.cooldown=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="scientist/1",minecraft:item_name={color:"white",translate:"healing_machine"},minecraft:lore=[{color:"white","italic":false,translate:"healing_machine_lore1"},{color:"white",translate:"healing_machine_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.1.cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/ability_cooldown"]
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] ability.1.cooldown 400
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={ability.1.cooldown=400}] run function class:scientist/healing_machine/activate
scoreboard players remove @s[scores={ability.1.cooldown=1..}] ability.1.cooldown 1
execute if entity @s[scores={ability.1.cooldown=200}] run function class:scientist/healing_machine/deactivate

execute if entity @s[scores={ability.2.cooldown=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="scientist/2",minecraft:item_name={color:"white",translate:"medicine"},minecraft:lore=[{color:"white","italic":false,translate:"medicine_lore1"},{color:"white",translate:"medicine_lore2"},{color:"white",translate:"medicine_lore3"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.2.cooldown=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] ability.2.cooldown 300
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={ability.2.cooldown=300}] run function class:scientist/medicine/activate
scoreboard players remove @s[scores={ability.2.cooldown=1..}] ability.2.cooldown 1
execute if entity @s[scores={ability.2.cooldown=200}] run function class:scientist/medicine/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="scientist/3",minecraft:item_name={color:"white",translate:"biohazard"},minecraft:lore=[{color:"white","italic":false,translate:"biohazard_lore1"},{color:"white",translate:"biohazard_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={reload=39}] run function class:scientist/biohazard/run

scoreboard players set @s maxHealth 150

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="scientist/0",minecraft:item_name={translate:"chemsprayer"},minecraft:lore=[{color:"white","italic":false,translate:"chemsprayer_lore"},{color:"white","italic":false,"text":" - damage: 5"},{color:"white","italic":false,"text":" - ammo: 6"},{color:"white","italic":false,"text":" - reload with speed: 2s"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="scientist/0",minecraft:item_name={translate:"chemsprayer"},minecraft:lore=[{color:"white","italic":false,translate:"chemsprayer_lore"},{color:"white","italic":false,"text":" - damage: 5"},{color:"white","italic":false,"text":" - ammo: 6"},{color:"white","italic":false,"text":" - reload with speed: 2s"}],tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function class:scientist/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=3..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function class:scientist/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1