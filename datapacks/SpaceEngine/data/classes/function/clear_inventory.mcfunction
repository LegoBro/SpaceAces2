#Cleans up inventory
item replace entity @s weapon.offhand with minecraft:air
execute unless entity @s[scores={over_heal=1..}] run item replace entity @s hotbar.5 with minecraft:air
item replace entity @s[nbt=!{active_effects:[{id:"minecraft:luck"}]}] hotbar.6 with minecraft:air
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:speed"}]}] run item replace entity @s[nbt=!{active_effects:[{id:"minecraft:slowness"}]}] hotbar.7 with minecraft:air
execute unless entity @s[scores={invis=1..}] run item replace entity @s[nbt=!{active_effects:[{id:"minecraft:glowing"}]}] hotbar.4 with minecraft:air
item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:air
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:air
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:air
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
return 1