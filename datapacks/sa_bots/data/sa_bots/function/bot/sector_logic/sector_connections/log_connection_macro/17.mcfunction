$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:17} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:17}
$tag e-0-0-0-11 add sab.connectedToSector.$(sector)
tag e-0-0-0-11 add sab.sectorInformationValid