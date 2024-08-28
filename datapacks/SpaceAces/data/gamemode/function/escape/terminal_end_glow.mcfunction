tp @e[type=minecraft:magma_cube,distance=..3,tag=terminal_glow] ~ -100 ~
execute positioned ~ -100 ~ run kill @e[type=minecraft:magma_cube,distance=..3,tag=terminal_glow]
tag @s remove glowing

return 1