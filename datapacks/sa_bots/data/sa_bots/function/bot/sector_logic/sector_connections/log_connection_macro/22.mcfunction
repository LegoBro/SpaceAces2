$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:22} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:22}
$tag e-0-0-0-16 add sab.connectedToSector.$(sector)
tag e-0-0-0-16 add sab.sectorInformationValid