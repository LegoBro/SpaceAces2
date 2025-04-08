## Reloads Class Variables



# Safety for shulkers/barrel
#fill 15 -61 0 15 -48 0 stone
execute unless block 15 -62 0 shulker_box run fill 15 -62 0 15 -48 0 shulker_box[facing=west]
execute unless block 15 -63 0 barrel run setblock 15 -63 0 barrel

schedule function class:4/set_defaults 1s

# Striker
function class:4/scout/reload
function class:4/soldier/reload
function class:4/sniper/reload
function class:4/bomber/reload
function class:4/mobility/reload
function class:4/infiltraitor/reload
function class:4/seeker/reload

## Guardian
function class:4/gunner/reload
function class:4/brawler/reload
function class:4/mechanic/reload
function class:4/pyro/reload
function class:4/rocketeer/reload

## Sustainer
function class:4/healer/reload
function class:4/scientist/reload
function class:4/shocksmith/reload
