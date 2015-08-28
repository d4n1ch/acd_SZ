ACD_SZ
======
by [d4n1ch](mailto:d.e@acd.su)
================================
Configurable Spawn & Trade zones
================================
for Arma 3 @Exile mod
=====================

ACD_SZ Version
--------------
* 0.1

@Exile Version
---------------
* 0.9.18

TODO:
-----
  - Place more props

Tech
----

This release uses @Exile project to work:

* [@Exile](http://www.exilemod.com/) - Exile mod client files
* [@ExileServer](http://www.exilemod.com/) - Exile mod server files

INSTALLATION:
----
#### CLEAN:
* 1) Copy all files inside your Exile.Altis mission pbo overwriting existing
* 2) Configure acd_SZ_config.sqf and acd_SPAWN_config.sqf to meet your needs.
* 3) profit
#### ADD-IN:
* 1) Copy acd_SZ folder inside your Exile.Altis mission pbo
* 2) Remove default sensors and markers by deleting those sections from mission.sqm
```java
class Sensors {};
class Markers {};

* 3) Edit init.sqf 
```java
//Add line
#include "acd_SZ\acd_SZ_config.sqf"

* 4) Edit initPlayerLocal.sqf
```java
//Remove default "Static Objects" below line:
if (!hasInterface || isServer) exitWith {};
//Add line to the end of file
#include "acd_SZ\acd_SZ_load_traders.sqf"

* 5) Edit initServer.sqf
```java
//Remove Static Objects below line
//Add line to the end of file
#include "acd_SZ\acd_SZ_load_props.sqf"

* 6) profit
