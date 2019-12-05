ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function AddItemToInventoryByTime()
	local players = ESX.GetPlayers()
	for i=1, #players, 1 do
		local xPlayer = ESX.GetPlayerFromId(players[i])
		xPlayer.addInventoryItem(Config.Item, 1)
		TriggerClientEvent('esx:showNotification', xPlayer.source, Config.ItemMessage)
		print(Config.ConsoleNotification)
	end
end

function AddItem()
	
	AddItemToInventoryByTime()
	SetTimeout(Config.ItemByTimeInterval, AddItem)
end

AddItem()

TriggerEvent('es:addGroupCommand', 'itembytime', 'superadmin', function(source, args, user)
	AddItemToInventoryByTime()
end)