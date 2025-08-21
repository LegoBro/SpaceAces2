item replace entity @s[gamemode=!spectator,tag=!invis,scores={crouching=0}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-0.05d}]},minecraft:dyed_color={rgb:2774103},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_multiplied_total",amount:-0.25d}]},minecraft:dyed_color={rgb:2774103},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

execute if entity @s[scores={ability.1.cooldown=0}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="rocketeer/1",minecraft:custom_name={color:"white",translate:"piercing_dart"},minecraft:lore=[{color:"white",translate:"piercing_dart_lore1"},{color:"white",translate:"piercing_dart_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.1.cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/ability_cooldown"]
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] ability.1.cooldown 100
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:1}] rightClick
execute if entity @s[scores={ability.1.cooldown=100}] run function class:3.4/rocketeer/piercing_dart/activate
scoreboard players remove @s[scores={ability.1.cooldown=1..}] ability.1.cooldown 1
execute if entity @s[scores={ability.1.cooldown=90}] run function class:3.4/rocketeer/piercing_dart/deactivate

execute if entity @s[scores={ability.2.cooldown=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="rocketeer/2",minecraft:custom_name={color:"white",translate:"resist"},minecraft:lore=[{color:"white",translate:"resist_lore1"},{color:"white",translate:"resist_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[scores={ability.2.cooldown=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]
scoreboard players set @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] ability.2.cooldown 400
scoreboard players reset @s[scores={rightClick=1..},nbt={SelectedItemSlot:2}] rightClick
execute if entity @s[scores={ability.2.cooldown=400}] run function class:3.4/rocketeer/resist/activate
scoreboard players remove @s[scores={ability.2.cooldown=1..}] ability.2.cooldown 1
execute if entity @s[scores={ability.2.cooldown=340}] run function class:3.4/rocketeer/resist/deactivate

# Passive
item replace entity @s hotbar.3 with minecraft:turtle_scute[minecraft:item_model="rocketeer/3",minecraft:custom_name={color:"white",translate:"rocket_boots"},minecraft:lore=[{color:"white",translate:"rocket_boots_lore1"},{color:"white",translate:"rocket_boots_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
function class:3.4/rocketeer/rocket_boots/run

scoreboard players set @s maxHealth 300

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="rocketeer/0",minecraft:custom_name={translate:"rocket_launcher"},minecraft:lore=[{color:"white",translate:"rocket_launcher_lore"},{color:"white","italic":false,"text":" - damage: 10"},{color:"white","italic":false,"text":" - ammo: 4"},{color:"white","italic":false,"text":" - reload with speed: 2.5s"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with minecraft:paper[minecraft:item_model="rocketeer/0",minecraft:custom_name={translate:"rocket_launcher"},minecraft:lore=[{color:"white",translate:"rocket_launcher_lore"},{color:"white","italic":false,"text":" - damage: 10"},{color:"white","italic":false,"text":" - ammo: 4"},{color:"white","italic":false,"text":" - reload with speed: 2.5s"}],tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s[scores={shoot=0},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[scores={shoot=1},nbt={SelectedItemSlot:0}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function class:3.4/rocketeer/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=16..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function class:3.4/rocketeer/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
return 1