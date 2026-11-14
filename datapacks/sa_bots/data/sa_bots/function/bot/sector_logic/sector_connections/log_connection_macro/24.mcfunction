$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:24} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:24}
$tag e-0-0-0-18 add sab.connectedToSector.$(sector)
tag e-0-0-0-18 add sab.sectorInformationValid