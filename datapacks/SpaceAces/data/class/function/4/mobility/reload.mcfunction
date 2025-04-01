## Reloads default stats
scoreboard players set class.mobility.health Numbers 125
scoreboard players set class.mobility.speed Numbers 120
scoreboard players set class.mobility.primary.reload Numbers 30
scoreboard players set class.mobility.primary.firerate Numbers 8
scoreboard players set class.mobility.primary.damage Numbers 15
scoreboard players set class.mobility.primary.critMult Numbers 150
scoreboard players set class.mobility.primary.falloff Numbers 2
scoreboard players set class.mobility.primary.falloffStart Numbers 15
scoreboard players set class.mobility.primary.speed Numbers 0
scoreboard players set class.mobility.primary.ammo Numbers 15
scoreboard players set class.mobility.1.cooldown Numbers 100
scoreboard players set class.mobility.1.duration Numbers 80
scoreboard players set class.mobility.1.maxUses Numbers 3

scoreboard players set class.mobility.2.cooldown Numbers 200
scoreboard players set class.mobility.2.duration Numbers 150

## Calculated on Reload, no need every tick:
scoreboard players operation #test Numbers = class.mobility.1.maxUses Numbers
scoreboard players remove #test Numbers 1
scoreboard players operation #test Numbers *= class.mobility.1.cooldown Numbers
scoreboard players operation #test Numbers *= -1 Numbers
scoreboard players operation class.mobility.1.minCooldown Numbers = #test Numbers