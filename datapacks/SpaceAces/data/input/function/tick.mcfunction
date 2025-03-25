## Ticking function for input collector

# Remove tags from advancements
tag @s remove input.left_click
tag @s remove input.right_click
tag @s remove input.swap_hands

# Stop removal
tag @s remove input.left.stop
tag @s remove input.right.stop
tag @s remove input.forward.stop
tag @s remove input.backward.stop
tag @s remove input.jump.stop
tag @s remove input.sneak.stop
tag @s remove input.sprint.stop

# Start removal
tag @s remove input.left.start
tag @s remove input.right.start
tag @s remove input.forward.start
tag @s remove input.backward.start
tag @s remove input.jump.start
tag @s remove input.sneak.start
tag @s remove input.sprint.start


execute if predicate input:left run tag @s[tag=!input.left] add input.left.start
execute if predicate input:left run tag @s add input.left
execute if entity @s[tag=input.left] unless predicate input:left run function input:stop/left

execute if predicate input:right run tag @s[tag=!input.right] add input.right.start
execute if predicate input:right run tag @s add input.right
execute if entity @s[tag=input.right] unless predicate input:right run function input:stop/right

execute if predicate input:forward run tag @s[tag=!input.forward] add input.forward.start
execute if predicate input:forward run tag @s add input.forward
execute if entity @s[tag=input.forward] unless predicate input:forward run function input:stop/forward

execute if predicate input:backward run tag @s[tag=!input.backward] add input.backward.start
execute if predicate input:backward run tag @s add input.backward
execute if entity @s[tag=input.backward] unless predicate input:backward run function input:stop/backward

execute if predicate input:jump run tag @s[tag=!input.jump] add input.jump.start
execute if predicate input:jump run tag @s add input.jump
execute if entity @s[tag=input.jump] unless predicate input:jump run function input:stop/jump

execute if predicate input:sneak run tag @s[tag=!input.sneak] add input.sneak.start
execute if predicate input:sneak run tag @s add input.sneak
execute if entity @s[tag=input.sneak] unless predicate input:sneak run function input:stop/sneak

execute if predicate input:sprint run tag @s[tag=!input.sprint] add input.sprint.start
execute if predicate input:sprint run tag @s add input.sprint
execute if entity @s[tag=input.sprint] unless predicate input:sprint run function input:stop/sprint

execute as @n[type=interaction,tag=input.interaction] run function input:interaction_tick