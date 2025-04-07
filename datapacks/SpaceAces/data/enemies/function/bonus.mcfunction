execute store result score Bonuses Numbers run random value 0..4
execute if score Bonuses Numbers matches 0 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["powerup","speed"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1}],CustomName:{translate:"powerup_speed"}}
execute if score Bonuses Numbers matches 1 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["powerup","damage"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blaze_powder",Count:1}],CustomName:{translate:"powerup_damage"}}
execute if score Bonuses Numbers matches 2 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["powerup","energy"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1}],CustomName:{translate:"powerup_energy"}}
execute if score Bonuses Numbers matches 3 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["powerup","aura"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:gunpowder",Count:1}],CustomName:{translate:"powerup_aura"}}
execute if score Bonuses Numbers matches 4 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["powerup","reload"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:prismarine_shard",Count:1}],CustomName:{translate:"powerup_reload"}}
kill @s

return 1