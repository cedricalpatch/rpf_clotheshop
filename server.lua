RegisterServerEvent('buy:clothe')
AddEventHandler('buy:clothe', function(price,kek)
    TriggerEvent('redemrp:getPlayerFromId', source, function(user,data)
    local currentMoney = user.getMoney()
    if currentMoney >= price then
        TriggerEvent('redemrp:getPlayerFromId', source, function(user,data)
          user.removeMoney(price)
        end)
        TriggerClientEvent('loadtenue', source, kek)
    else
        TriggerClientEvent('cancel', source)
    end
    end)
end)