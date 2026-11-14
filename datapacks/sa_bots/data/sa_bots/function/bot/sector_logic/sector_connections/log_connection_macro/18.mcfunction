$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:18} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:18}
$tag e-0-0-0-12 add sab.connectedToSector.$(sector)
tag e-0-0-0-12 add sab.sectorInformationValid