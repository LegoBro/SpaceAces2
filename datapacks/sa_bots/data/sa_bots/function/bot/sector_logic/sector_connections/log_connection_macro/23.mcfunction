$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:23} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:23}
$tag e-0-0-0-17 add sab.connectedToSector.$(sector)
tag e-0-0-0-17 add sab.sectorInformationValid