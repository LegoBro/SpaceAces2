$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:4} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:4}
$tag e-0-0-0-4 add sab.connectedToSector.$(sector)
tag e-0-0-0-4 add sab.sectorInformationValid