function onStepIn(cid, fromPosition)
    
local pos = {x=1000, y=1000, z=7}
local txt = "You have been teleported."
local fail = "You are not premium."
    
    if isPlayer(cid) and isPremium(cid) then
        doTeleportThing(cid, pos)
        doSendMagicEffect(pos, 12)
        doPlayerSendTextMessage(cid, 22, txt)
    else
        doPlayerSendTextMessage(cid, 22, fail)
        doTeleportThing(cid, fromPosition)
    end
return TRUE
end