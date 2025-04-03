
## Reloads default stats
execute store result score class.infiltraitor.health Numbers run data get storage space_aces:class infiltraitor.health
execute store result score class.infiltraitor.speed Numbers run data get storage space_aces:class infiltraitor.speed
execute store result score class.infiltraitor.primary.reload Numbers run data get storage space_aces:class infiltraitor.primary.reload 20
execute store result score class.infiltraitor.primary.firerate Numbers run data get storage space_aces:class infiltraitor.primary.firerate
execute store result score class.infiltraitor.primary.damage Numbers run data get storage space_aces:class infiltraitor.primary.damage
execute store result score class.infiltraitor.primary.critMult Numbers run data get storage space_aces:class infiltraitor.primary.critMult 100
execute store result score class.infiltraitor.primary.falloff Numbers run data get storage space_aces:class infiltraitor.primary.falloff
execute store result score class.infiltraitor.primary.falloffStart Numbers run data get storage space_aces:class infiltraitor.primary.falloffStart
execute store result score class.infiltraitor.primary.speed Numbers run data get storage space_aces:class infiltraitor.primary.speed
execute store result score class.infiltraitor.primary.ammo Numbers run data get storage space_aces:class infiltraitor.primary.ammo

execute store result score class.infiltraitor.1.cooldown Numbers run data get storage space_aces:class infiltraitor.1.cooldown
execute store result score class.infiltraitor.1.duration Numbers run data get storage space_aces:class infiltraitor.1.duration

execute store result score class.infiltraitor.2.cooldown Numbers run data get storage space_aces:class infiltraitor.2.cooldown
execute store result score class.infiltraitor.2.duration Numbers run data get storage space_aces:class infiltraitor.2.duration


execute store result score class.infiltraitor.2.damage Numbers run data get storage space_aces:class infiltraitor.2.damage
execute store result score class.infiltraitor.2.critMult Numbers run data get storage space_aces:class infiltraitor.2.critMult
execute store result score class.infiltraitor.2.arcRate Numbers run data get storage space_aces:class infiltraitor.2.arcRate
execute store result score class.infiltraitor.2.speed Numbers run data get storage space_aces:class infiltraitor.2.speed
execute store result score class.infiltraitor.2.detonate_damage Numbers run data get storage space_aces:class infiltraitor.2.detonate_damage
execute store result score class.infiltraitor.2.detonate_critMult Numbers run data get storage space_aces:class infiltraitor.2.detonate_critMult 100
execute store result score class.infiltraitor.2.detonate_falloff Numbers run data get storage space_aces:class infiltraitor.2.detonate_falloff
execute store result score class.infiltraitor.2.detonate_falloffStart Numbers run data get storage space_aces:class infiltraitor.2.detonate_falloffStart
execute store result score class.infiltraitor.2.detonate_timer Numbers run data get storage space_aces:class infiltraitor.2.detonate_timer

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/infiltraitor/primary",minecraft:item_name='{"translate":"class.infiltraitor.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.infiltraitor.primary.lore"}'],minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class infiltraitor.primary
item replace block 15 -52 0 container.0 from block 15 -63 0 container.0