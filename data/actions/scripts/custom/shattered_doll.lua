function onUse(player, cid, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.TheShatteredIsles.DefaultStart) <=2 then
	    player:removeItem(3954, 1)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Inquisition Quest Service Terminado. Ya puedes ir por tu reward.")
		doSendMagicEffect(getCreaturePosition(cid), 28)
		player:setStorageValue(Storage.TheShatteredIsles.DefaultStart, 1)
	    player:setStorageValue(Storage.TheShatteredIsles.TheGovernorDaughter, 3)
		player:setStorageValue(Storage.TheShatteredIsles.TheErrand, 2)
		player:setStorageValue(Storage.TheShatteredIsles.AccessToMeriana, 1)
		player:setStorageValue(Storage.TheShatteredIsles.APoemForTheMermaid, 3)
		player:setStorageValue(Storage.TheShatteredIsles.ADjinnInLove, 5)
		player:setStorageValue(Storage.TheShatteredIsles.AccessToLagunaIsland, 1)
		player:setStorageValue(Storage.TheShatteredIsles.AccessToGoroma, 1)
		player:setStorageValue(Storage.TheShatteredIsles.Shipwrecked, 2)
		player:setStorageValue(Storage.TheShatteredIsles.DragahsSpellbook, 1)
		player:setStorageValue(Storage.TheShatteredIsles.TheCounterspell, 4)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		doRemoveItem(item.uid,1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Ya las tienes ome. Ya puedes ir a Goroma y tal.")
	end
	return true
end
