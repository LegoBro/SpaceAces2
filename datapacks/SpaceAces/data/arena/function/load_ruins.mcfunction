#Loads Arena: ruins (dynamic)
setblock 20032 0 -64 minecraft:structure_block
data merge block 20032 0 -64 {ignoreEntities:0b,powered:0b,mode:"LOAD",posX:0,posY:0,posZ:0,name:"arena:ruins_0_0_0",showboundingbox:0b}
setblock 20032 1 -64 minecraft:redstone_block
fill 20032 32 -64 20063 63 -33 minecraft:air
setblock 20032 0 -32 minecraft:structure_block
data merge block 20032 0 -32 {ignoreEntities:0b,powered:0b,mode:"LOAD",posX:0,posY:0,posZ:0,name:"arena:ruins_0_0_1",showboundingbox:0b}
setblock 20032 1 -32 minecraft:redstone_block
fill 20032 32 -32 20063 63 -1 minecraft:air
setblock 20064 0 -64 minecraft:structure_block
data merge block 20064 0 -64 {ignoreEntities:0b,powered:0b,mode:"LOAD",posX:0,posY:0,posZ:0,name:"arena:ruins_1_0_0",showboundingbox:0b}
setblock 20064 1 -64 minecraft:redstone_block
fill 20064 32 -64 20095 63 -33 minecraft:air
setblock 20064 0 -32 minecraft:structure_block
data merge block 20064 0 -32 {ignoreEntities:0b,powered:0b,mode:"LOAD",posX:0,posY:0,posZ:0,name:"arena:ruins_1_0_1",showboundingbox:0b}
setblock 20064 1 -32 minecraft:redstone_block
fill 20064 32 -32 20095 63 -1 minecraft:air
return 1