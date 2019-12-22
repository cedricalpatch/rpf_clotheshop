RegisterServerEvent('buy:clothe')
AddEventHandler('buy:clothe', function(price,kek)
local _outfit = kek
    TriggerEvent('redemrp:getPlayerFromId', source, function(user,data)
    local currentMoney = user.getMoney()
	 local identifier = user.getIdentifier()
     local charid = user.getSessionVar("charid")
    if currentMoney >= price then
	 TriggerEvent("rpf_clotheshop:retrieveClothes", identifier, charid, function(call)
          user.removeMoney(price)
if call then

  MySQL.Async.execute("UPDATE outfits SET `outfit`='" .. _outfit .. "' WHERE `identifier`=@identifier AND `charid`=@charid", {identifier = identifier, charid = charid}, function(done)
  end)
else

  MySQL.Async.execute('INSERT INTO outfits (`identifier`, `charid`, `outfit`) VALUES (@identifier, @charid, @outfit);',
  {
    identifier = identifier,
    charid = charid,
    outfit = _outfit
  }, function(rowsChanged)
  end)
end
end)
		
        TriggerClientEvent('rpf_clotheshop:load_outfit', source, _outfit)
    else
        TriggerClientEvent('cancel', source)
    end
    end)
end)




RegisterServerEvent('rpf_clotheshop:loadClothes')
AddEventHandler('rpf_clotheshop:loadClothes', function()
local _source = source
	TriggerEvent('redemrp:getPlayerFromId', source, function(user)
		local identifier = user.getIdentifier()
		local charid = user.getSessionVar("charid")
			--print(identifier)
			
		MySQL.Async.fetchAll('SELECT * FROM outfits WHERE `identifier`=@identifier AND `charid`=@charid;', {identifier = identifier, charid = charid}, function(outfits)
		--print(skins[1].skin)
		if outfits[1] then
		local outfit = outfits[1].outfit
		TriggerClientEvent("rpf_clotheshop:load_outfit", _source, outfit)
		else end
		end)
	end)
end)





AddEventHandler('rpf_clotheshop:retrieveClothes', function(identifier, charid, callback)
local Callback = callback
     MySQL.Async.fetchAll('SELECT * FROM outfits WHERE `identifier`=@identifier AND `charid`=@charid;', {identifier = identifier, charid = charid}, function(outfits)
          if outfits[1] then
                Callback(outfits[1])
          else
                Callback(false)
          end
     end)
end)




