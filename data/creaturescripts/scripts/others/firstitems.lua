-- Without Rookgaard
local config = {
	[0] = {
		--club, coat, studded legs, leather boots, scarf , studded armor, legion helmet
		items = {{2382, 1}, {2651, 1}, {2468, 1}, {2643, 1}, {2661, 1}, {2464, 1}, {2480, 1}},
		--container rope, shovel, red apple
		container = {{2120, 1}, {2554, 1}, {2674, 1}}
	},	
	[1] = {
		--equipment spellbook, scorcher, magician's robe, mage hat, studded legs, leather boots, scarf
		items = {{2175, 1}, {23719, 1}, {8819, 1}, {8820, 1}, {2468, 1}, {2643, 1}, {2661, 1}},
		-- platinum coin, lightest missile rune, light stone shower rune, rope, shovel, mana potion
		container = {{2152, 100}, {23723, 5}, {23805, 5}, {2120, 1}, {2554, 1}, {7620, 5}}
	},
	[2] = {
		--equipment spellbook, chiller, magician's robe, mage hat, studded legs, leather boots, scarf
		items = {{2175, 1}, {23721, 1}, {8819, 1}, {8820, 1}, {2468, 1}, {2643, 1}, {2661, 1}},
		-- platinum coin, lightest missile rune, light stone shower rune, rope, shovel, mana potion
		container = {{2152, 100}, {23723, 5}, {23805, 5}, {2120, 1}, {2554, 1}, {7620, 5}}
	},
	[3] = {
		--equipment dwarven shield, 5 spear, ranger's cloak, ranger legs scarf, legion helmet
		items = {{2525, 1}, {2389, 5}, {2660, 1}, {8923, 1}, {2643, 1}, {2661, 1}, {2480, 1}},
		--container bow, simple arrow, rope, shovel, health potion, mana potion
		container = {{2152, 100}, {2456, 1}, {23799, 10}, {2120, 1}, {2554, 1}, {7618, 5}, {7620, 5}}
	},
	[4] = {
		--equipment dwarven shield, steel axe, brass armor, brass helmet, brass legs scarf
		items = {{2525, 1}, {8601, 1}, {2465, 1}, {2460, 1}, {2478, 1}, {2643, 1}, {2661, 1}},
		--container platinum coin, jagged sword, daramian mace, rope, shovel, health potion, mana potion
		container = {{2152, 100}, {8602, 1}, {2439, 1}, {2120, 1}, {2554, 1}, {7618, 5}, {7620, 5}}
	},	
	
	
	
	
	
	
	[5] = {
		--equipment spellbook, wand of vortex, magician's robe, mage hat, studded legs, leather boots, scarf
		items = {{2175, 1}, {2190, 1}, {2463, 1}, {2457, 1}, {2647, 1}, {2643, 1}, {2661, 1}},
		--container platinum coin, rope, shovel, mana potion
		container = {{24774, 100}, {2152, 100}, {2120, 1}, {2554, 1}, {7620, 5}}
	},
	[6] = {
		--equipment spellbook, snakebite rod, magician's robe, mage hat, studded legs, leather boots, scarf
		items = {{2175, 1}, {2182, 1}, {2463, 1}, {2457, 1}, {2647, 1}, {2643, 1}, {2661, 1}},
		--container platinum coin, rope, shovel, mana potion
		container = {{24774, 100}, {2152, 100}, {2120, 1}, {2554, 1}, {7620, 5}}
	},
	[7] = {
		--equipment dwrven shield, 5 spear, plate armor, plate legs, leather boots, scarf, steel helmet
		items = {{2525, 1}, {2389, 5}, {2463, 1}, {2647, 1}, {2643, 1}, {2661, 1}, {2457, 1}},
		--container platinum coin, rope, shovel, health potion, mana potion
		container = {{24774, 100}, {2152, 100}, {2120, 1}, {2554, 1}, {7618, 5}, {7620, 5}}
	},
	[8] = {
		--equipment dwarven shield, steel axe, plate armor, steel helmet, plate legs, leather boots, scarf
		items = {{2525, 1}, {8601, 1}, {2463, 1}, {2457, 1}, {2647, 1}, {2643, 1}, {2661, 1}},
		--container Tibia Coin, platinum coin, jagged sword, daramian mace, rope, shovel, health potion, mana potion
		container = {{24774, 100}, {2152, 100}, {8602, 1}, {2439, 1}, {2120, 1}, {2554, 1}, {7618, 5}, {7620, 5}}
	}
}

function onLogin(player)
	local targetVocation = config[player:getVocation():getId()]
	if not targetVocation then
		return true
	end

	if player:getLastLoginSaved() ~= 0 then
		return true
	end

	for i = 1, #targetVocation.items do
		player:addItem(targetVocation.items[i][1], targetVocation.items[i][2])
	end

	local backpack = player:getVocation():getId() == 0 and player:addItem(1987) or player:addItem(1988)
	if not backpack then
		return true
	end

	for i = 1, #targetVocation.container do
		backpack:addItem(targetVocation.container[i][1], targetVocation.container[i][2])
	end
	return true
end
