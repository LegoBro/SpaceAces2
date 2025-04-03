## Reloads default stats
execute store result score class.seeker.health Numbers run data get storage space_aces:class seeker.health
execute store result score class.seeker.speed Numbers run data get storage space_aces:class seeker.speed
execute store result score class.seeker.primary.reload Numbers run data get storage space_aces:class seeker.primary.reload 20
execute store result score class.seeker.primary.firerate Numbers run data get storage space_aces:class seeker.primary.firerate
execute store result score class.seeker.primary.damage Numbers run data get storage space_aces:class seeker.primary.damage
execute store result score class.seeker.primary.critMult Numbers run data get storage space_aces:class seeker.primary.critMult 100
execute store result score class.seeker.primary.falloff Numbers run data get storage space_aces:class seeker.primary.falloff
execute store result score class.seeker.primary.falloffStart Numbers run data get storage space_aces:class seeker.primary.falloffStart
execute store result score class.seeker.primary.speed Numbers run data get storage space_aces:class seeker.primary.speed
execute store result score class.seeker.primary.ammo Numbers run data get storage space_aces:class seeker.primary.ammo

execute store result score class.seeker.1.cooldown Numbers run data get storage space_aces:class seeker.1.cooldown
execute store result score class.seeker.1.duration Numbers run data get storage space_aces:class seeker.1.duration
execute store result score class.seeker.1.damage Numbers run data get storage space_aces:class seeker.1.damage
execute store result score class.seeker.1.speed Numbers run data get storage space_aces:class seeker.1.speed
execute store result score class.seeker.1.falloff Numbers run data get storage space_aces:class seeker.1.falloff
execute store result score class.seeker.1.falloffStart Numbers run data get storage space_aces:class seeker.1.falloffStart
execute store result score class.seeker.1.maxUses Numbers run data get storage space_aces:class seeker.1.maxUses


execute store result score class.seeker.2.cooldown Numbers run data get storage space_aces:class seeker.2.cooldown
execute store result score class.seeker.2.duration Numbers run data get storage space_aces:class seeker.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/seeker/primary",minecraft:item_name='{"translate":"class.seeker.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.seeker.primary.lore"}'],minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class seeker.primary
item replace block 15 -50 0 container.0 from block 15 -63 0 container.0

## Calculated on Reload, no need every tick:
scoreboard players operation #test Numbers = class.seeker.1.maxUses Numbers
scoreboard players remove #test Numbers 1
scoreboard players operation #test Numbers *= class.seeker.1.cooldown Numbers
scoreboard players operation #test Numbers *= -1 Numbers
scoreboard players operation class.seeker.1.minCooldown Numbers = #test Numbers

