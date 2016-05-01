function onUse(player, cid, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.TheNewFrontier.Questline) <=27 then
	    player:removeItem(24321, 1)
		doSendMagicEffect(getCreaturePosition(cid), 28)
		player:setStorageValue(Storage.TheNewFrontier.Questline, 28)
	    player:setStorageValue(Storage.TheNewFrontier.Mission01, 3)
		player:setStorageValue(Storage.TheNewFrontier.Mission02, 6)
		player:setStorageValue(Storage.TheNewFrontier.Mission03, 3)
		player:setStorageValue(Storage.TheNewFrontier.Mission04, 2)
		player:setStorageValue(Storage.TheNewFrontier.Mission05, 7)
		player:setStorageValue(Storage.TheNewFrontier.Mission06, 3)
		player:setStorageValue(Storage.TheNewFrontier.Mission07, 3)
		player:setStorageValue(Storage.TheNewFrontier.Mission08, 2)
		player:setStorageValue(Storage.TheNewFrontier.Mission09, 3)
		player:setStorageValue(Storage.TheNewFrontier.Mission10, 1)
		player:setStorageValue(Storage.TheNewFrontier.TomeofKnowledge, 12)
		player:setStorageValue(Storage.TheNewFrontier.Beaver1, 1)
		player:setStorageValue(Storage.TheNewFrontier.Beaver2, 1)
		player:setStorageValue(Storage.TheNewFrontier.Beaver3, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeKing, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeLeeland, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeExplorerSociety, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeWydrin, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeTelas, 1)
		player:setStorageValue(Storage.TheNewFrontier.BribeHumgolf, 1)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Questline, 21)
	    player:setStorageValue(Storage.ChildrenoftheRevolution.Mission00, 2)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Mission01, 3)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Mission02, 5)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Mission03, 3)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Mission04, 6)
		player:setStorageValue(Storage.ChildrenoftheRevolution.Mission05, 3)
		player:setStorageValue(Storage.ChildrenoftheRevolution.SpyBuilding01, 1)
		player:setStorageValue(Storage.ChildrenoftheRevolution.SpyBuilding02, 1)
		player:setStorageValue(Storage.ChildrenoftheRevolution.SpyBuilding03, 1)
		player:setStorageValue(Storage.ChildrenoftheRevolution.StrangeSymbols, 1)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			player:addOutfit(335, 2)
			player:addOutfit(336, 2)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "New Frontier & Children of Revolution Service Terminado. Ya puedes viajar a Farmine por carpet, usar el snake teleport y ETC..")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Ya las tienes ome. Ya puedes viajar a Farmine por carpet y usar el snake teleport.")
	end
	return true
end
