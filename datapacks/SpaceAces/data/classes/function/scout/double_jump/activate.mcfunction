## Double Jump
effect give @s levitation 1 100 true
tag @s add scout.double_jump.clear
tag @s add scout.double_jump
tag @s remove scout.double_jump.await
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5 1
particle poof ~ ~ ~ 0.1 0 0.1 0 5 force