$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:11} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:11}
$tag d-0-0-0-b add sab.connectedToSector.$(sector)
tag d-0-0-0-b add sab.sectorInformationValid