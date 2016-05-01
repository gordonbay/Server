function onUse(player, cid, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(Storage.WrathoftheEmperor.Questline) <=33 then
	    player:removeItem(24322, 1)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Wrath of The Emperor Quest Service Terminado. Ya puedes ir por tu reward.")
		doSendMagicEffect(getCreaturePosition(cid), 28)
		player:setStorageValue(Storage.WrathoftheEmperor.Questline, 34)
	    player:setStorageValue(Storage.WrathoftheEmperor.Mission01, 3)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission02, 3)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission03, 3)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission04, 3)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission05, 3)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission06, 4)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission07, 6)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission08, 2)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission09, 2)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission10, 6)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission11, 2)
		player:setStorageValue(Storage.WrathoftheEmperor.Mission12, 0)
		player:setStorageValue(Storage.WrathoftheEmperor.CrateStatus, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.GuardcaughtYou, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.ZumtahStatus, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.PrisonReleaseStatus, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest01, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest02, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.GhostOfAPriest03, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.InterdimensionalPotion, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.BossStatus, 1)
		player:setStorageValue(Storage.WrathoftheEmperor.platinumReward, 0)
		player:setStorageValue(Storage.WrathoftheEmperor.backpackReward, 0)
		player:setStorageValue(Storage.WrathoftheEmperor.mainReward, 0)
		player:setStorageValue(Storage.WrathoftheEmperor.TeleportAcess, 1)
		player:setStorageValue(Storage.UnnaturalSelection.Questline, 16)
	    player:setStorageValue(Storage.UnnaturalSelection.Mission01, 7)
		player:setStorageValue(Storage.UnnaturalSelection.Mission02, 3)
		player:setStorageValue(Storage.UnnaturalSelection.Mission03, 6)
		player:setStorageValue(Storage.UnnaturalSelection.Mission04, 3)
		player:setStorageValue(Storage.UnnaturalSelection.Mission05, 3)
		player:setStorageValue(Storage.UnnaturalSelection.Mission06, 3)
		player:setStorageValue(Storage.UnnaturalSelection.DanceStatus, 4)
		doRemoveItem(item.uid,1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Ya las tienes ome. Ya puedes ir por tu reward, entrar a lizard city y etc.")
	end
	return true
end