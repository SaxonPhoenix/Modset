//made by hartzie edited by FakeMatty
_player1 = if(!isPlayer armour1)then{""}else{(name armour1)};
_player2 = if(!isPlayer armour2)then{""}else{(name armour2)};
_player3 = if(!isPlayer armour3)then{""}else{(name armour3)};
_player4 = if(!isPlayer armour1US)then{""}else{(name armour1US)};
_player5 = if(!isPlayer armour2US)then{""}else{(name armour2US)};
_player6 = if(!isPlayer armour3US)then{""}else{(name armour3US)};

g_playerlist = [["Armour Crew", [["Armour", [_player1, "Armour Commander"],[_player2, "Armour Crewman"],[_player3, "Armour Crewman"]],["Armour", [_player4, "Armour Commander"],[_player5, "Armour Crewman"],[_player6, "Armour Crewman"]]]]			
				
				];

_bigheadline = "<t color='#CCCC00' size='1.5' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_headline = "<t color='#CCCC00' size='1.2' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_smallheadline = "<t color='#99CCFF' size='1.1' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_itemEmpty = "<t color='#99FFFF' size='1' shadow='1' shadowColor='#000000' align='left'>  Offline</t><br />";
_item = "<t color='#33CC00' size='1' shadow='1' shadowColor='#000000' align='left'>  %1</t><br />";
_text = "";


{
	//systemChat format["debug:%1", _x];
	_text = "";
	_text = _text + format[_bigheadline, _x select 0];
	{
		//systemChat format["debug:%1", _x];
		_text = _text + format[_headline, _x select 0];
		for "_i" from 1 to ((count _x) -1) do {
			_temp2 = _x select _i;
			_text = _text + format [_smallheadline, _temp2 select 1];
			if (_temp2 select 0 == "") then {
				_text = _text + _itemEmpty;
			} else {
				_text = _text + format [_item, _temp2 select 0];
			};
		};
	} forEach (_x select 1);
	hint parseText _text;
	sleep 7;
} forEach g_playerList;

