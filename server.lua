ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('jejey:blanchiement')
AddEventHandler('jejey:blanchiement', function(argent)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local taxe = 0.4    -- Somme multipliée par ce nombre

	argent = ESX.Math.Round(tonumber(argent))
	pourcentage = argent * taxe
	Total = ESX.Math.Round(tonumber(pourcentage))

	if argent > 0 and xPlayer.getAccount('black_money').money >= argent then
		xPlayer.removeAccountMoney('black_money', argent)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Information', 'Blanchiement', 'Attend ~r~10 secondes', 'CHAR_MP_FM_CONTACT', 8)
		Citizen.Wait(10000)
		
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Information', 'Blanchiement', 'Tu as reçu : ' .. ESX.Math.GroupDigits(Total) .. ' ~g~$', 'CHAR_MP_FM_CONTACT', 8)
		xPlayer.addMoney(Total)
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Information', 'Blanchiement', '~r~Montant invalide', 'CHAR_MP_FM_CONTACT', 8)
	end	
end)
