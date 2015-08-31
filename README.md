ACD_SZ by [d4n1ch](mailto:d.e@acd.su)
=====================================
Configurable Spawn & Trade zones
--------------------------------
for Arma 3 @Exile mod
---------------------

ACD_SZ Version
--------------
* 0.4

@Exile Version
---------------
* 0.9.19

TODO:
-----
  - Place more props
  - Add more traders to new default zones
  
Changelog:
----------

* Server side addon created to initialize config before `ExileServer_object_vehicle_database_load.sqf` executed
* Added 2 new default trader zones to make them configurable
* Added configurable option to unlock vehicles inside safe zone upon restart
* Added configurable option to disable lifting for locked vehicles
* Added configurable option to repair vehicles upon restart
* Added configurable option to refuel vehicles upon restart

Tech
----

This release uses @Exile project to work:

* [@Exile](http://www.exilemod.com/) - Exile mod client files
* [@ExileServer](http://www.exilemod.com/) - Exile mod server files

INSTALLATION:
----
#### CLEAN:
<<<<<<< HEAD
<<<<<<< HEAD
* 1) Copy `acd_sz.pbo` to exile server addon folder `@ExileServer\addons`
* 2) Copy all files from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo overwriting existing
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo and add row: `ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";`
`Example`

```
class CfgExileCustomCode 
{
	ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";
};
```

=======
* 1) Copy `acd_sz.pbo` to exile server addon folder `@ExileServer\addons`
* 2) Copy all files from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo overwriting existing
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo and add row: `ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";`
>>>>>>> parent of e083a4f... Revert "version-0.4"
* 4) Configure acd_SZ_config.sqf and acd_SPAWN_config.sqf to meet your needs.
* 5) profit

Notice
------
Listed files should look like this:
<<<<<<< HEAD

=======
>>>>>>> parent of e083a4f... Revert "version-0.4"
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
<<<<<<< HEAD
=======
* 1) Copy all files inside your Exile.Altis mission pbo overwriting existing
* 2) Configure acd_SZ_config.sqf and acd_SPAWN_config.sqf to meet your needs.
* 3) profit
>>>>>>> parent of 3b11441... version-0.4
=======
>>>>>>> parent of e083a4f... Revert "version-0.4"

#### ADD-IN:
* 1) Copy `acd_sz.pbo` to exile server addon folder `@ExileServer\addons`
* 2) Copy folders `custom` and `overwrites` from `mpmissions\Exile.Altis` to your Exile.Altis mission pbo
* 3) Edit section `CfgExileCustomCode` inside `config.cpp` of your Exile.Altis mission pbo and add row: `ExileServer_object_vehicle_database_load = "overwrites\exile_server\code\ExileServer_object_vehicle_database_load.sqf";`
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
