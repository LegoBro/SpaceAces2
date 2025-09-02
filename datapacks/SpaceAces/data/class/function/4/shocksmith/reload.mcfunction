## Reloads default stats
execute store result score class.shocksmith.health Numbers run data get storage space_aces:class shocksmith.health
execute store result score class.shocksmith.speed Numbers run data get storage space_aces:class shocksmith.speed

execute store result score class.shocksmith.primary.reload Numbers run data get storage space_aces:class shocksmith.primary.reload 20
execute store result score class.shocksmith.primary.firerate Numbers run data get storage space_aces:class shocksmith.primary.firerate
execute store result score class.shocksmith.primary.damage Numbers run data get storage space_aces:class shocksmith.primary.damage
execute store result score class.shocksmith.primary.healing Numbers run data get storage space_aces:class shocksmith.primary.healing
execute store result score class.shocksmith.primary.critMult Numbers run data get storage space_aces:class shocksmith.primary.critMult 100
execute store result score class.shocksmith.primary.falloff Numbers run data get storage space_aces:class shocksmith.primary.falloff
execute store result score class.shocksmith.primary.falloffStart Numbers run data get storage space_aces:class shocksmith.primary.falloffStart
execute store result score class.shocksmith.primary.speed Numbers run data get storage space_aces:class shocksmith.primary.speed
execute store result score class.shocksmith.primary.ammo Numbers run data get storage space_aces:class shocksmith.primary.ammo
execute store result score class.shocksmith.primary.steal_amount Numbers run data get storage space_aces:class shocksmith.primary.steal_amount


execute store result score class.shocksmith.secondary.reload Numbers run data get storage space_aces:class shocksmith.secondary.reload 20
execute store result score class.shocksmith.secondary.firerate Numbers run data get storage space_aces:class shocksmith.secondary.firerate
execute store result score class.shocksmith.secondary.damage Numbers run data get storage space_aces:class shocksmith.secondary.damage
execute store result score class.shocksmith.secondary.healing Numbers run data get storage space_aces:class shocksmith.secondary.healing
execute store result score class.shocksmith.secondary.critMult Numbers run data get storage space_aces:class shocksmith.secondary.critMult 100
execute store result score class.shocksmith.secondary.arcRate Numbers run data get storage space_aces:class shocksmith.secondary.arcRate
execute store result score class.shocksmith.secondary.falloffStart Numbers run data get storage space_aces:class shocksmith.secondary.falloffStart
execute store result score class.shocksmith.secondary.speed Numbers run data get storage space_aces:class shocksmith.secondary.speed
execute store result score class.shocksmith.secondary.cost Numbers run data get storage space_aces:class shocksmith.secondary.cost

execute store result score class.shocksmith.secondary.explode_healing Numbers run data get storage space_aces:class shocksmith.secondary.explode_healing
execute store result score class.shocksmith.secondary.explode_damage Numbers run data get storage space_aces:class shocksmith.secondary.explode_damage
execute store result score class.shocksmith.secondary.explode_critMult Numbers run data get storage space_aces:class shocksmith.secondary.explode_critMult
execute store result score class.shocksmith.secondary.explode_falloff Numbers run data get storage space_aces:class shocksmith.secondary.explode_falloff
execute store result score class.shocksmith.secondary.explode_falloffStart Numbers run data get storage space_aces:class shocksmith.secondary.explode_falloffStart


execute store result score class.shocksmith.1.cooldown Numbers run data get storage space_aces:class shocksmith.1.cooldown
execute store result score class.shocksmith.1.duration Numbers run data get storage space_aces:class shocksmith.1.duration

execute store result score class.shocksmith.2.cooldown Numbers run data get storage space_aces:class shocksmith.2.cooldown
execute store result score class.shocksmith.2.duration Numbers run data get storage space_aces:class shocksmith.2.duration
execute store result score class.shocksmith.2.damage Numbers run data get storage space_aces:class shocksmith.2.damage
execute store result score class.shocksmith.2.critMult Numbers run data get storage space_aces:class shocksmith.2.critMult 100
execute store result score class.shocksmith.2.speed Numbers run data get storage space_aces:class shocksmith.2.speed
execute store result score class.shocksmith.2.arcRate Numbers run data get storage space_aces:class shocksmith.2.arcRate

execute store result score class.shocksmith.ultimate.charge Numbers run data get storage space_aces:class shocksmith.ultimate.charge
execute store result score class.shocksmith.ultimate.duration Numbers run data get storage space_aces:class shocksmith.ultimate.duration 20

execute store result score class.shocksmith.ultimate.speed Numbers run data get storage space_aces:class shocksmith.ultimate.speed
execute store result score class.shocksmith.ultimate.arcRate Numbers run data get storage space_aces:class shocksmith.ultimate.arcRate

execute store result score class.shocksmith.ultimate.detonate_damage Numbers run data get storage space_aces:class shocksmith.ultimate.detonate_damage
execute store result score class.shocksmith.ultimate.detonate_critMult Numbers run data get storage space_aces:class shocksmith.ultimate.detonate_critMult
execute store result score class.shocksmith.ultimate.detonate_falloff Numbers run data get storage space_aces:class shocksmith.ultimate.detonate_falloff
execute store result score class.shocksmith.ultimate.detonate_falloffStart Numbers run data get storage space_aces:class shocksmith.ultimate.detonate_falloffStart

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/shocksmith/primary",minecraft:item_name={translate:"class.shocksmith.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.primary.lore"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class shocksmith.primary
item replace block 15 -48 0 container.0 from block 15 -63 0 container.0

item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/shocksmith/secondary",minecraft:item_name={translate:"class.shocksmith.secondary"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.secondary.lore"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class shocksmith.secondary
item replace block 15 -48 0 container.1 from block 15 -63 0 container.0


execute store result score class.shocksmith.secondary.max_ammo Numbers run data get storage space_aces:class shocksmith.secondary.max_ammo
scoreboard players operation class.shocksmith.secondary.max_ammo Numbers *= class.shocksmith.secondary.cost Numbers