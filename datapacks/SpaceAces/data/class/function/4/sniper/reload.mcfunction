## Reloads default stats
execute store result score class.sniper.health Numbers run data get storage space_aces:class sniper.health
execute store result score class.sniper.speed Numbers run data get storage space_aces:class sniper.speed
execute store result score class.sniper.primary.reload Numbers run data get storage space_aces:class sniper.primary.reload 20
execute store result score class.sniper.primary.firerate Numbers run data get storage space_aces:class sniper.primary.firerate
execute store result score class.sniper.primary.damage Numbers run data get storage space_aces:class sniper.primary.damage
execute store result score class.sniper.primary.critMult Numbers run data get storage space_aces:class sniper.primary.critMult 100
execute store result score class.sniper.primary.falloff Numbers run data get storage space_aces:class sniper.primary.falloff
execute store result score class.sniper.primary.falloffStart Numbers run data get storage space_aces:class sniper.primary.falloffStart
execute store result score class.sniper.primary.speed Numbers run data get storage space_aces:class sniper.primary.speed
execute store result score class.sniper.primary.ammo Numbers run data get storage space_aces:class sniper.primary.ammo

execute store result score class.sniper.1.maxDamage Numbers run data get storage space_aces:class sniper.1.maxDamage -1
execute store result score class.sniper.1.falloff Numbers run data get storage space_aces:class sniper.1.falloff
execute store result score class.sniper.1.falloffStart Numbers run data get storage space_aces:class sniper.1.falloffStart
execute store result score class.sniper.1.speed Numbers run data get storage space_aces:class sniper.1.speed
execute store result score class.sniper.1.critMult Numbers run data get storage space_aces:class sniper.1.critMult
execute store result score class.sniper.1.charge_speed Numbers run data get storage space_aces:class sniper.1.charge_speed


execute store result score class.sniper.2.cooldown Numbers run data get storage space_aces:class sniper.2.cooldown
execute store result score class.sniper.2.duration Numbers run data get storage space_aces:class sniper.2.duration
execute store result score class.sniper.2.damage Numbers run data get storage space_aces:class sniper.2.damage
execute store result score class.sniper.2.critMult Numbers run data get storage space_aces:class sniper.2.critMult
execute store result score class.sniper.2.falloff Numbers run data get storage space_aces:class sniper.2.falloff
execute store result score class.sniper.2.falloffStart Numbers run data get storage space_aces:class sniper.2.falloffStart
execute store result score class.sniper.2.speed Numbers run data get storage space_aces:class sniper.2.speed
execute store result score class.sniper.2.arcRate Numbers run data get storage space_aces:class sniper.2.arcRate

execute store result score class.sniper.ultimate.charge Numbers run data get storage space_aces:class sniper.ultimate.charge
execute store result score class.sniper.ultimate.duration Numbers run data get storage space_aces:class sniper.ultimate.duration 20
execute store result score class.sniper.ultimate.maxDamage Numbers run data get storage space_aces:class sniper.ultimate.maxDamage -1


## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/sniper/primary",minecraft:item_name={translate:"class.sniper.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.primary.lore.1"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class sniper.primary
item replace block 15 -60 0 container.0 from block 15 -63 0 container.0