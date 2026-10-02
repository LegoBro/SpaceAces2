$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:14} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:14}
$tag e-0-0-0-e add sab.connectedToSector.$(sector)
tag e-0-0-0-e add sab.sectorInformationValid