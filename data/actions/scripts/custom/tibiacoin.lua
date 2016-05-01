local function doPlayerAddPremiumPoints(cid, count)
		db.query('UPDATE accounts SET premium_points = premium_points+'.. count ..' WHERE id = ' .. getAccountNumberByPlayerName(getCreatureName(cid)))
end

function onUse(cid, item, fromPosition, itemEx, toPosition) 
	doPlayerAddPremiumPoints(cid, 1)
	doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "a Tibia Coin have been added into your account. Check the Tibia Shop for offers.")
	doSendMagicEffect(getCreaturePosition(cid), 28)
	doRemoveItem(item.uid,1)
	return true
end