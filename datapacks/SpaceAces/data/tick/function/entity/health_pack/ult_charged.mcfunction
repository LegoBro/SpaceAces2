#data merge entity @s {Item:{id:"minecraft:baked_potato",components:{"minecraft:item_model":"health/"},count:1}}
tag @s add charged
summon item_display ~ ~0.5 ~ {item:{id:stone,components:{item_model:"health/ult_icon"}},Tags:["health_pack.icon"],teleport_duration:3}