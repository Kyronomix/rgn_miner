VORP = exports.vorp_core:vorpAPI()
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
local itemcount = math.random(Config.itemcount['min'], Config.itemcount['max'])

RegisterServerEvent('rgn_miner:startjob')
AddEventHandler('rgn_miner:startjob', function()
    --TriggerEvent('redemrp:getPlayerFromId', source, function(user)
    TriggerEvent("vorp:getCharacter",source,function(user)
        if user.job == Config.JobName then
            TriggerClientEvent('rgn_miner:start', source)
            TriggerClientEvent("vorp:TipRight", source, Language.translate[Config.lang]['gopos'], 5000)
        else
            TriggerClientEvent("vorp:TipRight", source, Language.translate[Config.lang]['nojob'], 5000)
        end
    end)
end)

RegisterServerEvent('rgn_miner:pay')
AddEventHandler('rgn_miner:pay', function(money, xp)
    --TriggerEvent('redemrp:getPlayerFromId', source, function(user)
    TriggerEvent("vorp:getCharacter",source,function(user)
        local _source = source
		local count = VorpInv.getItemCount(source, "steel")
        VORP.addMoney(_source, 0, (money * count))
        VORP.addXp(_source, xp)
	end)
end)

RegisterServerEvent('rgn_miner:additem')
AddEventHandler('rgn_miner:additem', function(item)
	local _source = source
	VorpInv.addItem(_source, Config.item, itemcount)
end)

RegisterServerEvent('rgn_miner:removeitem')
AddEventHandler('rgn_miner:removeitem', function(item)
	local _source = source
	local count = VorpInv.getItemCount(source, "steel")
	VorpInv.subItem(_source, Config.item, count)
end)
	