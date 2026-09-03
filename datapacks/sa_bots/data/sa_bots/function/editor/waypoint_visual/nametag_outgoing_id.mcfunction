scoreboard players operation #iminus1 sab.var = #i sab.var
scoreboard players remove #iminus1 sab.var 1

data merge entity @s {see_through:true,billboard:"center",background:0,transformation:{scale:[0.8f,0.8f,0.8f]}}
data modify entity @s text set value {score:{name:"#iminus1",objective:"sab.var"},color:gold}
scoreboard players set @s sab.lifespan 7