------------------------------------------------------------------
-----------------[[ VIP SYSTEM POR LUANLUCIANO ]]-----------------
------------------------------------------------------------------

-- player:doVipTime()
function Player.doVipTime(self)
	local resultId = db.storeQuery("SELECT `vip_time` FROM `accounts` WHERE `id` = '".. self:getAccountId() .."';")
	return resultId ~= false and result.getDataInt(resultId, "vip_time") or error('Account not found.')
end

-- player:isVip()
function Player.isVip(self)
	return self:doVipTime() > os.time() and true or false
end

-- player:addVipDays(days)
function Player.addVipDays(self, days)
	return(self:isVip() and tonumber((days * 86400))) and db.query("UPDATE `accounts` SET `vip_time` = '".. (self:doVipTime() + (days * 86400)) .."' WHERE `id` ='".. self:getAccountId() .."' LIMIT 1 ;") or db.query("UPDATE `accounts` SET `vip_time` = '".. (os.time() + (days * 86400)) .."' WHERE `id` ='".. self:getAccountId() .."' LIMIT 1 ;")
end

-- player:removeVip()
function Player.removeVip(self)
	db.query("UPDATE `accounts` SET `vip_time` = '0' WHERE `id` ='".. self:getAccountId() .."' LIMIT 1 ;")
end

-- player:doVipDays()
function Player.doVipDays(self)
	local vipDays = math.floor(self:doVipTime() / 86400)
	return self:doVipTime() ~= false and self:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Your have '.. vipDays .. ' vip days.') or error('error.')
end

-- player:doVipDate(storage)
function Player.doVipDate(self, storage)
	if self:isVip() then
		self:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Your vip ends in '.. os.date("%d %b %Y", self:doVipTime()) ..'.')
		if self:getStorageValue(storage) < 1 then
			self:setStorageValue(storage, 1)
		end
	else
		if self:getStorageValue(storage) >= 1 then
			self:teleportTo(self:getTown():getTemplePosition())
			self:setStorageValue(storage, 0)
		end
	end
end  