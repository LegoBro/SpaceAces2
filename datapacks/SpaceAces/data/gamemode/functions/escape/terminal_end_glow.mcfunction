tp @e[type=magma_cube,tag=terminal_glow,distance=..3] ~ -100 ~
execute positioned ~ -100 ~ run kill @e[type=magma_cube,tag=terminal_glow,distance=..3]
tag @s remove glowing
