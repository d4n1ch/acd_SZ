class CfgPatches {
	class  {
		requiredVersion = 0.1;
		requiredAddons[] = {"exile_client", "exile_server_config", "exile_server"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};
class CfgFunctions {
	class acdsz {
		class Bootstrap {
			file = "acd_sz\bootstrap";
			
			class preInit {
				preInit = 1;
			};
			
			class postInit {
				postInit = 1;
			};
		};
		
		class FiniteStateMachine {
			file = "acd_sz\fsm";
			
			class main {
				ext = ".fsm";
			};
		};
		class fileExists
		{
			file = "acd_sz\code";
			class fileExists {};
		};
		
	};
};
