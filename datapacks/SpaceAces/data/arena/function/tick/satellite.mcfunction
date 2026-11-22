## Ticks the Satellite Map when it is active



#give levitation to people in the tunnel with the fans
execute positioned 17402.5 84.0 -1.25 run effect give @e[type=#projectile:players,tag=sab.activePlayer,dx=9,dy=9,dz=2.66] levitation 1 7 true
#and clear levitation when players reach the top
execute positioned 17402.5 96.0 -1.25 run effect clear @e[type=#projectile:players,tag=sab.activePlayer,dx=9,dy=2,dz=2.66] levitation
