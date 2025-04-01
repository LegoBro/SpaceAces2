## Reloads default stats
scoreboard players set class.seeker.health Numbers 125
scoreboard players set class.seeker.speed Numbers 130
scoreboard players set class.seeker.primary.reload Numbers 60
scoreboard players set class.seeker.primary.firerate Numbers 8
scoreboard players set class.seeker.primary.damage Numbers 12
scoreboard players set class.seeker.primary.critMult Numbers 150
scoreboard players set class.seeker.primary.falloff Numbers 1
scoreboard players set class.seeker.primary.falloffStart Numbers 6
scoreboard players set class.seeker.primary.speed Numbers 0
scoreboard players set class.seeker.primary.ammo Numbers 6

scoreboard players set class.seeker.1.cooldown Numbers 60
scoreboard players set class.seeker.1.duration Numbers 50
scoreboard players set class.seeker.1.damage Numbers 20
scoreboard players set class.seeker.1.speed Numbers 12
scoreboard players set class.seeker.1.falloff Numbers 1
scoreboard players set class.seeker.1.falloffStart Numbers 20
scoreboard players set class.seeker.1.maxUses Numbers 3


scoreboard players set class.seeker.2.cooldown Numbers 300
scoreboard players set class.seeker.2.duration Numbers 250


## Calculated on Reload, no need every tick:
scoreboard players operation #test Numbers = class.seeker.1.maxUses Numbers
scoreboard players remove #test Numbers 1
scoreboard players operation #test Numbers *= class.seeker.1.cooldown Numbers
scoreboard players operation #test Numbers *= -1 Numbers
scoreboard players operation class.seeker.1.minCooldown Numbers = #test Numbers