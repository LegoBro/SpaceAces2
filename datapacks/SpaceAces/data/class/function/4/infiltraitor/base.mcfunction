item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.3d}]},minecraft:dyed_color={rgb:16777215},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:0.15d}]},minecraft:dyed_color={rgb:16777215},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

execute if entity @s[scores={ability.1.cooldown=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="infiltraitor/1",minecraft:item_name={color:"white",translate:"cloak"},minecraft:lore=[{color:"white","italic":false,translate:"cloak_lore1"},{color:"white",translate:"cloak_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.1.cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] ability.1.cooldown 200
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={ability.1.cooldown=200}] run function class:4/infiltraitor/cloak/activate
scoreboard players remove @s[scores={ability.1.cooldown=1..}] ability.1.cooldown 1
execute if entity @s[scores={ability.1.cooldown=100}] run function class:4/infiltraitor/cloak/deactivate

execute if entity @s[scores={ability.2.cooldown=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="infiltraitor/2",minecraft:item_name={color:"white",translate:"jammer"},minecraft:lore=[{color:"white","italic":false,translate:"jammer_lore1"},{color:"white",translate:"jammer_lore2"},{color:"white",translate:"jammer_lore3"},{color:"white",translate:"jammer_lore4"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.2.cooldown=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] ability.2.cooldown 300
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={ability.2.cooldown=300}] run function class:4/infiltraitor/jammer/activate
scoreboard players remove @s[scores={ability.2.cooldown=1..}] ability.2.cooldown 1
execute if entity @s[scores={ability.2.cooldown=295}] run function class:4/infiltraitor/jammer/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="infiltraitor/3",minecraft:item_name={color:"white",translate:"recloak"},minecraft:lore=[{color:"white","italic":false,translate:"recloak_lore1"},{color:"white",translate:"recloak_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

#item replace entity @s hotbar.4 with minecraft:turtle_scute[minecraft:item_model="infiltraitor/4",minecraft:item_name={color:"white","text":"Projected Clone","italic": false}',minecraft:lore=[{color:"white","italic":false,translate:"recloak_lore1"},{color:"white",translate:"recloak_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/infiltraitor/recloak/run

scoreboard players set @s maxHealth 100

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="infiltraitor/0",minecraft:item_name={translate:"plasma_pistol"},minecraft:lore=[{color:"white","italic":false,translate:"plasma_pistol_lore"},{color:"white","italic":false,"text":" - damage: 50"},{color:"white","italic":false,"text":" - ammo: 6"},{color:"white","italic":false,"text":" - reload with speed: 1.75s"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="infiltraitor/0",minecraft:item_name={translate:"plasma_pistol"},minecraft:lore=[{color:"white","italic":false,translate:"plasma_pistol_lore"},{color:"white","italic":false,"text":" - damage: 50"},{color:"white","italic":false,"text":" - ammo: 6"},{color:"white","italic":false,"text":" - reload with speed: 1.75s"}],tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function class:4/infiltraitor/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=15..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function class:4/infiltraitor/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1