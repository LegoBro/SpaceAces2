#executed by a marker representing a sector


#report back with the sector we are (nonzero means we found something)
scoreboard players operation #sector sab.var = @s sab.botInSector

#keep track of which sector has the highest and lowest friendly presence
scoreboard players operation #max sab.var > @s sab.teamPresenceRed
scoreboard players operation #min sab.var < @s sab.teamPresenceRed

#we are a viable option
tag @s add sab.sectorOptionViable