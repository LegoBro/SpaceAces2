$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:20} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:20}
$tag e-0-0-0-14 add sab.connectedToSector.$(sector)
tag e-0-0-0-14 add sab.sectorInformationValid