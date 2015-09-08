ACD_SZ by [d4n1ch](mailto:d.e@acd.su)
=====================================
Configurable Spawn & Trade zones
--------------------------------
for Arma 3 @Exile mod
---------------------

ACD_SZ Version
--------------
* 0.4.4

@Exile Version
---------------
* 0.9.19 "BANANA"

TODO:
-----
  - Place more props
  - Add more traders to new default zones
  
Changelog:
----------
### 0.4
* Server side addon created to initialize config before `ExileServer_object_vehicle_database_load.sqf` executed
* Added 2 new default trader zones to make them configurable
* Added configurable option to unlock vehicles inside safe zone upon restart
* Added configurable option to disable lifting for locked vehicles
* Added configurable option to repair vehicles upon restart
* Added configurable option to refuel vehicles upon restart

### 0.4.3
* Server side addon removed
* Directory structure changed
* New functions implemented 
* ExileServer code overwrite ExileServer_system_trading_network_purchaseVehicleRequest.sqf added to fix "Failed to purchase vehicle: 13" when purchasing air vehicle
* Ability to configure up to 5 custom SPAWN locations

### 0.4.4
* Fixed issue with AIR vehicles spawned midair 
* Added array with predefined positions for Terminal SZ

Tech
----

This release uses @Exile project to work:

* [@Exile](http://www.exilemod.com/) - Exile mod client files
* [@ExileServer](http://www.exilemod.com/) - Exile mod server files

INSTALLATION:
----
#### CLEAN:
* 1) Copy folders `custom` and `overwrites` from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo
* 2) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo to look like this: 
```java
class CfgExileCustomCode 
{
	ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";
	ExileServer_system_trading_network_purchaseVehicleRequest = "overwrites\exile_server\code\ExileServer_system_trading_network_purchaseVehicleRequest.sqf";
};
```
* 3) Configure acd_SZ_config.sqf and acd_SPAWN_config.sqf to meet your needs.
* 4) profit

Notice
------
Listed files should look like this:

`init.sqf`
```
#include "custom\acd_SZ\acd_SZ_config.sqf"
```

`initServer.sqf`
```
#include "custom\acd_SZ\acd_SZ_load_props.sqf"
```

`initPlayerLocal.sqf`
```
#include "initServer.sqf"
if (!hasInterface || isServer) exitWith {};
#include "custom\acd_SZ\acd_SZ_load_traders.sqf"
```

#### ADD-IN:
* 1) Copy folders `custom` and `overwrites` from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo to look like this: 
```java
class CfgExileCustomCode 
{
	ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";
	ExileServer_system_trading_network_purchaseVehicleRequest = "overwrites\exile_server\code\ExileServer_system_trading_network_purchaseVehicleRequest.sqf";
};
```
* 4) Remove default sensors and markers by deleting those sections from mission.sqm
```java
class Sensors {};
class Markers {};
```
* 5) Edit init.sqf 
```java
//Add line
#include "acd_SZ\acd_SZ_config.sqf"
```
* 6) Edit initPlayerLocal.sqf
```java
//Remove default traders below line:
if (!hasInterface || isServer) exitWith {};
//Add line to the end of file
#include "acd_SZ\acd_SZ_load_traders.sqf"
```
* 7) Edit initServer.sqf
```java
//Remove default props 
//Add line to the end of file
#include "acd_SZ\acd_SZ_load_props.sqf"
```

* 8) profit
