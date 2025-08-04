## Reloads default stats
execute store result score class.pyro.health Numbers run data get storage space_aces:class pyro.health
execute store result score class.pyro.speed Numbers run data get storage space_aces:class pyro.speed
execute store result score class.pyro.primary.reload Numbers run data get storage space_aces:class pyro.primary.reload 20
execute store result score class.pyro.primary.firerate Numbers run data get storage space_aces:class pyro.primary.firerate
execute store result score class.pyro.primary.damage Numbers run data get storage space_aces:class pyro.primary.damage
execute store result score class.pyro.primary.critMult Numbers run data get storage space_aces:class pyro.primary.critMult 100
execute store result score class.pyro.primary.falloff Numbers run data get storage space_aces:class pyro.primary.falloff
execute store result score class.pyro.primary.falloffStart Numbers run data get storage space_aces:class pyro.primary.falloffStart
execute store result score class.pyro.primary.speed Numbers run data get storage space_aces:class pyro.primary.speed
execute store result score class.pyro.primary.ammo Numbers run data get storage space_aces:class pyro.primary.ammo
execute store result score class.pyro.primary.arcRate Numbers run data get storage space_aces:class pyro.primary.arcRate

execute store result score class.pyro.1.cooldown Numbers run data get storage space_aces:class pyro.1.cooldown
execute store result score class.pyro.1.duration Numbers run data get storage space_aces:class pyro.1.duration

execute store result score class.pyro.2.cooldown Numbers run data get storage space_aces:class pyro.2.cooldown
execute store result score class.pyro.2.duration Numbers run data get storage space_aces:class pyro.2.duration
execute store result score class.pyro.2.percent_for_second Numbers run data get storage space_aces:class pyro.2.percent_for_second


## Calculated on Reload, no need every tick:
## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/pyro/primary",minecraft:item_name={translate:"class.pyro.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.primary.lore"}],tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class pyro.primary
item replace block 15 -51 0 container.0 from block 15 -63 0 container.0

