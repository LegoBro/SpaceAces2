$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:10} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:10}
$tag e-0-0-0-a add sab.connectedToSector.$(sector)
tag e-0-0-0-a add sab.sectorInformationValid