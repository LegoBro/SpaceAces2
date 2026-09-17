## Renews the damage indicator
scoreboard players operation @s damage += #damage damage
scoreboard players add @s sab.lifespan 5
data modify entity @s text set value {"score":{"name":"@s","objective":"damage"},color:"red","type":"score"}
tp @s ~ ~0.5 ~