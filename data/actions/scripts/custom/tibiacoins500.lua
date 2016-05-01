local function doPlayerAddPremiumPoints(cid, count)
		db.query('UPDATE accounts SET premium_points = premium_points+'.. count ..' WHERE id = ' .. getAccountNumberByPlayerName(getCreatureName(cid)))
end

function onUse(cid, item, fromPosition, itemEx, toPosition) 
	doPlayerAddPremiumPoints(cid, 500)
	doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Se agregaron 500 Tibia coins en tu cuenta. Ya puedes comprar cosas en el Web Shop.")
	doSendMagicEffect(getCreaturePosition(cid), 28)
	doRemoveItem(item.uid,1)
	return true
end