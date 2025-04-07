execute store result score class.rocketeer.health Numbers run data get storage space_aces:class rocketeer.health
execute store result score class.rocketeer.speed Numbers run data get storage space_aces:class rocketeer.speed
execute store result score class.rocketeer.primary.reload Numbers run data get storage space_aces:class rocketeer.primary.reload 20
execute store result score class.rocketeer.primary.firerate Numbers run data get storage space_aces:class rocketeer.primary.firerate
execute store result score class.rocketeer.primary.damage Numbers run data get storage space_aces:class rocketeer.primary.damage
execute store result score class.rocketeer.primary.critMult Numbers run data get storage space_aces:class rocketeer.primary.critMult 100
execute store result score class.rocketeer.primary.falloff Numbers run data get storage space_aces:class rocketeer.primary.falloff
execute store result score class.rocketeer.primary.falloffStart Numbers run data get storage space_aces:class rocketeer.primary.falloffStart
execute store result score class.rocketeer.primary.speed Numbers run data get storage space_aces:class rocketeer.primary.speed
execute store result score class.rocketeer.primary.ammo Numbers run data get storage space_aces:class rocketeer.primary.ammo

execute store result score class.rocketeer.primary.impact_damage Numbers run data get storage space_aces:class rocketeer.primary.impact_damage
execute store result score class.rocketeer.primary.impact_critMult Numbers run data get storage space_aces:class rocketeer.primary.impact_critMult 100
execute store result score class.rocketeer.primary.impact_falloff Numbers run data get storage space_aces:class rocketeer.primary.impact_falloff
execute store result score class.rocketeer.primary.impact_falloffStart Numbers run data get storage space_aces:class rocketeer.primary.impact_falloffStart


execute store result score class.rocketeer.1.cooldown Numbers run data get storage space_aces:class rocketeer.1.cooldown
execute store result score class.rocketeer.1.duration Numbers run data get storage space_aces:class rocketeer.1.duration
execute store result score class.rocketeer.1.damage Numbers run data get storage space_aces:class rocketeer.1.damage
execute store result score class.rocketeer.1.speed Numbers run data get storage space_aces:class rocketeer.1.speed
execute store result score class.rocketeer.1.falloff Numbers run data get storage space_aces:class rocketeer.1.falloff
execute store result score class.rocketeer.1.falloffStart Numbers run data get storage space_aces:class rocketeer.1.falloffStart
execute store result score class.rocketeer.1.maxUses Numbers run data get storage space_aces:class rocketeer.1.maxUses


execute store result score class.rocketeer.2.cooldown Numbers run data get storage space_aces:class rocketeer.2.cooldown
execute store result score class.rocketeer.2.duration Numbers run data get storage space_aces:class rocketeer.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/rocketeer/primary",minecraft:item_name={translate:"class.rocketeer.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.rocketeer.primary.lore"}],tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class rocketeer.primary
item replace block 15 -49 0 container.0 from block 15 -63 0 container.0