#executed by a marker representing a sector


#do nothing if we don't exist on this map
execute if entity @s[scores={sab.teamPresenceBlue=0,sab.teamPresenceRed=0}] run return fail
#=====

#neutral
execute if score @s sab.teamPresenceNet matches 0 run tellraw @a[tag=sab.self,distance=..1] [{text:"sector ",bold:true},{score:{name:"@s","objective":"sab.botInSector"},bold:true},{text:": ",bold:true}, \
    {text:"net=",color:white,bold:false},{score:{name:"@s",objective:"sab.teamPresenceNet"},bold:false},"  ", \
    {text:"blue=",color:blue,bold:false},{score:{name:"@s",objective:"sab.teamPresenceBlue"},bold:false},"  ", \
    {text:"red=",color:red,bold:false},{score:{name:"@s",objective:"sab.teamPresenceRed"},bold:false} \
    ]

#blue controlled
execute if score @s sab.teamPresenceNet matches 1.. run tellraw @a[tag=sab.self,distance=..1] [{text:"sector ",bold:true},{score:{name:"@s","objective":"sab.botInSector"},bold:true},{text:": ",bold:true}, \
    {text:"net=",color:blue,bold:false},{score:{name:"@s",objective:"sab.teamPresenceNet"},bold:false},"  ", \
    {text:"blue=",color:blue,bold:false},{score:{name:"@s",objective:"sab.teamPresenceBlue"},bold:false},"  ", \
    {text:"red=",color:red,bold:false},{score:{name:"@s",objective:"sab.teamPresenceRed"},bold:false} \
    ]

#red controlled
execute if score @s sab.teamPresenceNet matches ..-1 run tellraw @a[tag=sab.self,distance=..1] [{text:"sector ",bold:true},{score:{name:"@s","objective":"sab.botInSector"},bold:true},{text:": ",bold:true}, \
    {text:"net=",color:red,bold:false},{score:{name:"@s",objective:"sab.teamPresenceNet"},bold:false},"  ", \
    {text:"blue=",color:blue,bold:false},{score:{name:"@s",objective:"sab.teamPresenceBlue"},bold:false},"  ", \
    {text:"red=",color:red,bold:false},{score:{name:"@s",objective:"sab.teamPresenceRed"},bold:false} \
    ]
