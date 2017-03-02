params["_group"];
if(!(isNil {_group getVariable "twc_cacheDefending"}))then{
	systemChat format["%1 is Defending",str _group];
	_ready = 0;
	_time = time + 60;
	waitUntil{
		{
			_ready = 1;
			if(!(unitReady _x))then{
				_ready = 0;
			};			
		}forEach (units _group);
		_ready == 1 || _time < time;
	};
	{
		_x disableAI "path";
	}forEach (units _group);
};
{
	if(leader _x != _x)then{
		_x enableSimulationGlobal false;
		_x hideObjectGlobal true;
	};
}forEach units _group;