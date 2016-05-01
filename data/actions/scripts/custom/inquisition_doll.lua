function onUse(player, cid, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.TheInquisition.Questline) <=24 then
	    player:removeItem(24322, 1)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Inquisition Quest Service Terminado. Ya puedes ir por tu reward.")
		doSendMagicEffect(getCreaturePosition(cid), 28)
		player:setStorageValue(Storage.TheInquisition.Questline, 25)
	    player:setStorageValue(Storage.TheInquisition.Mission01, 7)
		player:setStorageValue(Storage.TheInquisition.Mission02, 3)
		player:setStorageValue(Storage.TheInquisition.Mission03, 6)
		player:setStorageValue(Storage.TheInquisition.Mission04, 3)
		player:setStorageValue(Storage.TheInquisition.Mission05, 3)
		player:setStorageValue(Storage.TheInquisition.Mission06, 3)
		player:setStorageValue(Storage.TheInquisition.Mission07, 4)
		player:setStorageValue(Storage.TheInquisition.GrofGuard, 1)
		player:setStorageValue(Storage.TheInquisition.KulagGuard, 1)
		player:setStorageValue(Storage.TheInquisition.TimGuard, 1)
		player:setStorageValue(Storage.TheInquisition.WalterGuard, 1)
		player:setStorageValue(Storage.TheInquisition.StorkusVampiredust, 1)
		player:setStorageValue(Storage.TheInquisition.EnterTeleport, 1)
		player:addOutfitAddon(288, 3)
		player:addOutfitAddon(289, 3)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:addAchievement('Demonbane')
		doRemoveItem(item.uid,1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Ya las tienes ome. Ya puedes ir por tu reward y compras blessings.")
	end
	return true
end

