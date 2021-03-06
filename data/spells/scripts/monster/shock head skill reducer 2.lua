local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 4000)
condition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, 70)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STUN)
combat:setArea(createCombatArea(AREA_CROSS6X6))
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
