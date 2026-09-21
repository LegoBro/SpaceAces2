## Renews the damage indicator
scoreboard players operation @s damage += #damage damage
scoreboard players set @s sab.lifespan 20
data modify entity @s text set value {"score":{"name":"@s","objective":"damage"},color:"red","type":"score"}
tp @s ~ ~0.5 ~