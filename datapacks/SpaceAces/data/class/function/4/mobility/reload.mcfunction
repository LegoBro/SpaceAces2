## Reloads default stats
execute store result score class.mobility.health Numbers run data get storage space_aces:class mobility.health
execute store result score class.mobility.speed Numbers run data get storage space_aces:class mobility.speed
execute store result score class.mobility.primary.reload Numbers run data get storage space_aces:class mobility.primary.reload 20
execute store result score class.mobility.primary.firerate Numbers run data get storage space_aces:class mobility.primary.firerate
execute store result score class.mobility.primary.damage Numbers run data get storage space_aces:class mobility.primary.damage
execute store result score class.mobility.primary.critMult Numbers run data get storage space_aces:class mobility.primary.critMult 100
execute store result score class.mobility.primary.falloff Numbers run data get storage space_aces:class mobility.primary.falloff
execute store result score class.mobility.primary.falloffStart Numbers run data get storage space_aces:class mobility.primary.falloffStart
execute store result score class.mobility.primary.speed Numbers run data get storage space_aces:class mobility.primary.speed
execute store result score class.mobility.primary.ammo Numbers run data get storage space_aces:class mobility.primary.ammo
execute store result score class.mobility.1.cooldown Numbers run data get storage space_aces:class mobility.1.cooldown
execute store result score class.mobility.1.duration Numbers run data get storage space_aces:class mobility.1.duration
execute store result score class.mobility.1.maxUses Numbers run data get storage space_aces:class mobility.1.maxUses

execute store result score class.mobility.2.cooldown Numbers run data get storage space_aces:class mobility.2.cooldown
execute store result score class.mobility.2.duration Numbers run data get storage space_aces:class mobility.2.duration

## Calculated on Reload, no need every tick:
## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/mobility/primary",minecraft:item_name='{"translate":"class.mobility.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.mobility.primary.lore"}'],minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class mobility.primary
item replace block 15 -55 0 container.0 from block 15 -63 0 container.0

scoreboard players operation #test Numbers = class.mobility.1.maxUses Numbers
scoreboard players remove #test Numbers 1
scoreboard players operation #test Numbers *= class.mobility.1.cooldown Numbers
scoreboard players operation #test Numbers *= -1 Numbers
scoreboard players operation class.mobility.1.minCooldown Numbers = #test Numbers