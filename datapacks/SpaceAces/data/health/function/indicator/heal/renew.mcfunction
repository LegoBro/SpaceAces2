## Renews the healing indicator
scoreboard players operation @s healing += #healing healing
scoreboard players add @s sab.lifespan 5
data modify entity @s text set value {"score":{"name":"@s","objective":"healing"},color:"green","type":"score"}
tp @s ~ ~0.5 ~