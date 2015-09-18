ACD_SZ by [d4n1ch](mailto:d.e@acd.su)
=====================================
Configurable Spawn & Trade zones
--------------------------------
for Arma 3 @Exile mod
---------------------

ACD_SZ Version
--------------
* 0.5.0

@Exile Version
---------------
* 0.9.20b "Tomato"

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

### 0.4.5
* Fixed for a fix (vehicle purchase error: 13)
* Fixed vehicles spawn altitude

### 0.4.6
* Added option to replace Trader City texture with 1024x512 jpg file (sample PSD and JPG files included)

### 0.4.7
* Added option to change SZ/SPAWN search radius for construction (default is 1000)

### 0.5
* File structure changed
* Server side addon is back
* Markers adjusted

### 0.5.0
* Changes in init files for R3F to work

Tech
----

This release uses @Exile project to work:

* [@Exile](http://www.exilemod.com/) - Exile mod client files
* [@ExileServer](http://www.exilemod.com/) - Exile mod server files

INSTALLATION:
----
#### CLEAN:
* 1) Copy `acd_sz.pbo` to `@ExileServer\addons` folder
* 2) Copy folders `custom` and `overwrites` from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo to look like this: 
```java
class CfgExileCustomCode 
{
	ExileClient_util_world_isSpawnZoneNearby = "overwrites\exile_client\code\ExileClient_util_world_isSpawnZoneNearby.sqf";
	ExileClient_util_world_isTraderZoneNearby = "overwrites\exile_client\code\ExileClient_util_world_isTraderZoneNearby.sqf";
	ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";
	ExileServer_system_trading_network_purchaseVehicleRequest = "overwrites\exile_server\code\ExileServer_system_trading_network_purchaseVehicleRequest.sqf";
};
```
* 4) Edit battleye filters or use files included:
```java
// scripts.txt
7 compile !="_isSafe = call compile format[\"%1_IS_SAFE\",_sz_name];"
// publicvariable.txt
7 "" !="acd_SZ_enabled_list"
```
* 5) Configure acd_SZ_config.sqf and acd_SPAWN_config.sqf to meet your needs.
* 6) profit

Notice
------
Listed files should look like this:

`init.sqf`
```
#include "custom\acd_SZ\acd_SZ_config.sqf"
```

`initServer.sqf`
```
publicVariable "acd_SZ_enabled_list";
```

`initPlayerLocal.sqf`
```
#include "initServer.sqf"
if (!hasInterface || isServer) exitWith {};
call acd_fnc_createSensors;
call acd_fnc_precompileTraders;
```

#### ADD-IN:
* 1) Copy folders `custom` and `overwrites` from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo to look like this: 
```java
class CfgExileCustomCode 
{
	ExileClient_util_world_isSpawnZoneNearby = "overwrites\exile_client\code\ExileClient_util_world_isSpawnZoneNearby.sqf";
	ExileClient_util_world_isTraderZoneNearby = "overwrites\exile_client\code\ExileClient_util_world_isTraderZoneNearby.sqf";
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
call acd_fnc_createSensors;
call acd_fnc_precompileTraders;
```
* 7) Edit initServer.sqf
```java
//Remove default props 
//Add line to the file top
publicVariable "acd_SZ_enabled_list";
```
* 8) Edit battleye filters or use files included:
```java
// scripts.txt
7 compile !="_isSafe = call compile format[\"%1_IS_SAFE\",_sz_name];"
// publicvariable.txt
7 "" !="acd_SZ_enabled_list"
```
* 9) profit
