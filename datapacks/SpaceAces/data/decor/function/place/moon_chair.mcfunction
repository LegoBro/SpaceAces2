summon item_display ~ ~ ~ {Tags:["arena.detail","arena","new_detail","detail.moon_chair"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"decor/moon_chair"}}}
execute as @n[tag=new_detail] at @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
tag @n[tag=new_detail] remove new_detail