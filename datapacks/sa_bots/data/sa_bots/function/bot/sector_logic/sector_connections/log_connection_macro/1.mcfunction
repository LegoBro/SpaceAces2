$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:1} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:1}
$tag e-0-0-0-1 add sab.connectedToSector.$(sector)
tag e-0-0-0-1 add sab.sectorInformationValid