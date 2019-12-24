-- blips on the map
-- blip sur la carte

local blips = {
   {title="valentine", id=1687768444, x=-322.25, y=803.97, z=116.95},
   {title="rhodes", id=1687768444, x=1225.60, y=-1293.85, z=76.90},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = Citizen.InvokeNative(0x554d9d53f696d002, info.id, info.x, info.y, info.z)
    end      
end)

-- Clothe shop
-- magasin de vetement

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('tenu', "Tailor")
    WarMenu.SetSubTitle('tenu', 'Purchase an Outfit')
    WarMenu.CreateSubMenu('tail', 'tenu', 'Complete Outfits')
    WarMenu.CreateSubMenu('tail2', 'tenu', 'Modif your Model')
     WarMenu.CreateSubMenu('tail3', 'tenu', 'Reset Character Model')


    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())
        local model = GetHashKey("mp_male")
        local player = PlayerId()

        if WarMenu.IsMenuOpened('tenu') then

            if WarMenu.MenuButton('Complete Clothe', 'tail') then
            end

            if WarMenu.MenuButton('New Character Model', 'tail3') then 
            end

            if WarMenu.MenuButton('Modif Outfit', 'tail2') then 
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('tail') then
            if WarMenu.Button('Cowboy with Beard 0 $') then
                TriggerServerEvent("buy:clothe", 0, 30) 
            elseif WarMenu.Button('Crazy Armour 2 $') then
                TriggerServerEvent("buy:clothe", 2, 1) 
            elseif WarMenu.Button('Farmer 1.5 $') then
                TriggerServerEvent("buy:clothe", 1.5, 2) 
            elseif WarMenu.Button('Cowboy in Leather (Mexican) 1.4 $') then
                TriggerServerEvent("buy:clothe", 1.4, 4) 
            elseif WarMenu.Button('Cowboy in Leather (USA) 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 5) 
            elseif WarMenu.Button('Cowboy with Scarf 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 6) 
            elseif WarMenu.Button('Cowboy with a cape 1 $') then
                TriggerServerEvent("buy:clothe", 1, 7) 
            elseif WarMenu.Button('Explorer 0.2 $') then
                TriggerServerEvent("buy:clothe", 0.2, 8) 
            elseif WarMenu.Button('Explorer with Vest 0.4 $') then
                TriggerServerEvent("buy:clothe", 0.4, 9) 
            elseif WarMenu.Button('Hunter 0.1') then
                TriggerServerEvent("buy:clothe", 0.1, 10) 
            elseif WarMenu.Button('Hunter with Beard 3 $') then
                TriggerServerEvent("buy:clothe", 3, 11) 
            elseif WarMenu.Button('Indian 0 $') then
                TriggerServerEvent("buy:clothe", 0, 12) 
            elseif WarMenu.Button('Indian with Fringe $') then
                TriggerServerEvent("buy:clothe", 0.6, 13) 
            elseif WarMenu.Button('Poacher 2 $') then
                TriggerServerEvent("buy:clothe", 2, 14) 
            elseif WarMenu.Button('Rich Poacher 15 $') then
                TriggerServerEvent("buy:clothe", 5, 15) 
            elseif WarMenu.Button('Cowboy - Blonde 7 $') then
                TriggerServerEvent("buy:clothe", 7, 36) 
            elseif WarMenu.Button('Cowboy - Common 0.6 $') then
                TriggerServerEvent("buy:clothe", 0.6, 37) 
            elseif WarMenu.Button('Cowboy - Common 2 1 $') then
                TriggerServerEvent("buy:clothe", 1, 38) 
            elseif WarMenu.Button('Bard Coat 3$') then
                TriggerServerEvent("buy:clothe", 3, 19) 
            elseif WarMenu.Button('Mustache and Coat 2 $') then
                TriggerServerEvent("buy:clothe", 2, 20) 
            elseif WarMenu.Button('Cowboy - Poor 0 $') then
                TriggerServerEvent("buy:clothe", 0, 21) 
            elseif WarMenu.Button('Suit 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 22) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 23) 
            elseif WarMenu.Button('Cowboy - Uncommon 4 $') then
                TriggerServerEvent("buy:clothe", 4, 24) 
            elseif WarMenu.Button('Cowboy with Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 25) 
            elseif WarMenu.Button('Cowboy - Common 3 3 $') then
                TriggerServerEvent("buy:clothe", 3, 26) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 27) 
            elseif WarMenu.Button('Manteau barde 3$') then
                TriggerServerEvent("buy:clothe", 3, 28) 
            elseif WarMenu.Button('Manteau moustache 2 $') then
                TriggerServerEvent("buy:clothe", 2, 29) 
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("buy:clothe", 0, 30) 
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 31) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 32) 
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("buy:clothe", 4, 33) 
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 34) 
            elseif WarMenu.Button('Cowboy blond 3 $') then
                TriggerServerEvent("buy:clothe", 4, 36) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 37) 
            elseif WarMenu.Button('Crazy Armour 2 $') then
                TriggerServerEvent("buy:clothe", 2, 38) 
            elseif WarMenu.Button('Farmer 1.5 $') then
                TriggerServerEvent("buy:clothe", 1.5, 39) 
            elseif WarMenu.Button('Cowboy in Leather (Mexican) 1.4 $') then
                TriggerServerEvent("buy:clothe", 1.4, 40) 
            elseif WarMenu.Button('Cowboy in Leather (USA) 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 41) 
            elseif WarMenu.Button('Cowboy with Scarf 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 42) 
            elseif WarMenu.Button('Cowboy with a cape 1 $') then
                TriggerServerEvent("buy:clothe", 1, 23) 
            elseif WarMenu.Button('Explorer 0.2 $') then
                TriggerServerEvent("buy:clothe", 0.2, 44) 
            elseif WarMenu.Button('Explorer with Vest 0.4 $') then
                TriggerServerEvent("buy:clothe", 0.4, 45) 
            elseif WarMenu.Button('Hunter 0.1') then
                TriggerServerEvent("buy:clothe", 0.1, 46) 
            elseif WarMenu.Button('Hunter with Beard 3 $') then
                TriggerServerEvent("buy:clothe", 3, 47) 
            elseif WarMenu.Button('Indian 0 $') then
                TriggerServerEvent("buy:clothe", 0, 48) 
            elseif WarMenu.Button('Indian with Fringe $') then
                TriggerServerEvent("buy:clothe", 0.6, 49) 
            elseif WarMenu.Button('Poacher 2 $') then
                TriggerServerEvent("buy:clothe", 2, 50) 
            elseif WarMenu.Button('Rich Poacher 15 $') then
                TriggerServerEvent("buy:clothe", 5, 51) 
            elseif WarMenu.Button('Cowboy - Blonde 7 $') then
                TriggerServerEvent("buy:clothe", 7, 52) 
            elseif WarMenu.Button('Cowboy - Common 0.6 $') then
                TriggerServerEvent("buy:clothe", 0.6, 53) 
            elseif WarMenu.Button('Cowboy - Common 2 1 $') then
                TriggerServerEvent("buy:clothe", 1, 54) 
            elseif WarMenu.Button('Bard Coat 3$') then
                TriggerServerEvent("buy:clothe", 3, 55) 
            elseif WarMenu.Button('Mustache and Coat 2 $') then
                TriggerServerEvent("buy:clothe", 2, 56) 
            elseif WarMenu.Button('Cowboy - Poor 0 $') then
                TriggerServerEvent("buy:clothe", 0, 57) 
            elseif WarMenu.Button('Suit 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 58) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 59) 
            elseif WarMenu.Button('Cowboy - Uncommon 4 $') then
                TriggerServerEvent("buy:clothe", 4, 60) 
            elseif WarMenu.Button('Cowboy with Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 61) 
            elseif WarMenu.Button('Cowboy - Common 3 3 $') then
                TriggerServerEvent("buy:clothe", 3, 62) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 63) 
            elseif WarMenu.Button('Manteau barde 3$') then
                TriggerServerEvent("buy:clothe", 3, 64) 
            elseif WarMenu.Button('Manteau moustache 2 $') then
                TriggerServerEvent("buy:clothe", 2, 65) 
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("buy:clothe", 0, 66) 
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 67) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 68) 
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("buy:clothe", 4, 69) 
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 70) 
            elseif WarMenu.Button('Cowboy blond 3 $') then
                TriggerServerEvent("buy:clothe", 4, 71) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 72) 
            elseif WarMenu.Button('Crazy Armour 2 $') then
                TriggerServerEvent("buy:clothe", 2, 73) 
            elseif WarMenu.Button('Farmer 1.5 $') then
                TriggerServerEvent("buy:clothe", 1.5, 74) 
            elseif WarMenu.Button('Cowboy in Leather (Mexican) 1.4 $') then
                TriggerServerEvent("buy:clothe", 1.4, 75) 
            elseif WarMenu.Button('Cowboy in Leather (USA) 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 76) 
            elseif WarMenu.Button('Cowboy with Scarf 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 77) 
            elseif WarMenu.Button('Cowboy with a cape 1 $') then
                TriggerServerEvent("buy:clothe", 1, 78) 
            elseif WarMenu.Button('Explorer 0.2 $') then
                TriggerServerEvent("buy:clothe", 0.2, 79) 
            elseif WarMenu.Button('Explorer with Vest 0.4 $') then
                TriggerServerEvent("buy:clothe", 0.4, 80) 
            elseif WarMenu.Button('Hunter 0.1') then
                TriggerServerEvent("buy:clothe", 0.1, 81) 
            elseif WarMenu.Button('Hunter with Beard 3 $') then
                TriggerServerEvent("buy:clothe", 3, 82) 
            elseif WarMenu.Button('Indian 0 $') then
                TriggerServerEvent("buy:clothe", 0, 83) 
            elseif WarMenu.Button('Indian with Fringe $') then
                TriggerServerEvent("buy:clothe", 0.6, 84) 
            elseif WarMenu.Button('Poacher 2 $') then
                TriggerServerEvent("buy:clothe", 2, 85) 
            elseif WarMenu.Button('Rich Poacher 15 $') then
                TriggerServerEvent("buy:clothe", 5, 86) 
            elseif WarMenu.Button('Cowboy - Blonde 7 $') then
                TriggerServerEvent("buy:clothe", 7, 87) 
            elseif WarMenu.Button('Cowboy - Common 0.6 $') then
                TriggerServerEvent("buy:clothe", 0.6, 88) 
            elseif WarMenu.Button('Cowboy - Common 2 1 $') then
                TriggerServerEvent("buy:clothe", 1, 89) 
            elseif WarMenu.Button('Bard Coat 3$') then
                TriggerServerEvent("buy:clothe", 3, 90) 
            elseif WarMenu.Button('Mustache and Coat 2 $') then
                TriggerServerEvent("buy:clothe", 2, 91) 
            elseif WarMenu.Button('Cowboy - Poor 0 $') then
                TriggerServerEvent("buy:clothe", 0, 92) 
            elseif WarMenu.Button('Suit 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 93) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 94) 
            elseif WarMenu.Button('Cowboy - Uncommon 4 $') then
                TriggerServerEvent("buy:clothe", 4, 95) 
            elseif WarMenu.Button('Cowboy with Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 96) 
            elseif WarMenu.Button('Cowboy - Common 3 3 $') then
                TriggerServerEvent("buy:clothe", 3, 97) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 98) 
            elseif WarMenu.Button('Manteau barde 3$') then
                TriggerServerEvent("buy:clothe", 3, 99) 
            elseif WarMenu.Button('Manteau moustache 2 $') then
                TriggerServerEvent("buy:clothe", 2, 100) 
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("buy:clothe", 0, 101) 
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 102) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 103) 
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("buy:clothe", 4, 104) 
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 105) 
            elseif WarMenu.Button('Cowboy blond 3 $') then
                TriggerServerEvent("buy:clothe", 4, 106) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 107) 
            end

            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('tail2') then   
            if WarMenu.Button('Modif your Model') then
               TriggerServerEvent("redemrp_clothing:loadClothes", 2)
            end

            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('tail3') then   
            if WarMenu.Button('Peso online') then
               TriggerEvent('redemrp_skin:openCreator')
            end

            WarMenu.Display()

        elseif (Vdist(coords.x, coords.y, coords.z, -322.25, 803.97, 116.95) < 1.0) then
               TriggerEvent("enter:clothe")
               if whenKeyJustPressed(keys["ENTER"]) then
                WarMenu.OpenMenu('tenu')
               end
            --WarMenu.OpenMenu('tenu')
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -329.24, 775.37, 120.65) < 1.0) then --added new shop
                TriggerEvent("enter:server")
                if whenKeyJustPressed(keys["ENTER"]) then
                WarMenu.OpenMenu('tenu')
               end
        end
        Citizen.Wait(0)
    end
end)

-- callback or?
RegisterCommand("loadcloath2", function(source, args)
 TriggerServerEvent("rpf_clotheshop:loadClothes", function(cb)
end)
end)

RegisterNetEvent('cancel')
  AddEventHandler('cancel', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = "You do not have enough money."
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

RegisterNetEvent('enter:clothe')
  AddEventHandler('enter:clothe', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = "Press [ENTER] to access the tailor."
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

RegisterNetEvent('enter:server')
  AddEventHandler('enter:server', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = "Welcome in our server. Your Personel Menu (L) and press (Enter) for change Outfit or complet skin..."
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

-- save clothe
RegisterNetEvent('rpf_clotheshop:load_outfit')
  AddEventHandler('rpf_clotheshop:load_outfit', function(outfit)
  local _outfit = tonumber(outfit)
  print(_outfit)
   SetPedOutfitPreset(PlayerPedId(), _outfit)
  end)

------ key fonction

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

---- spawn npc

function lePlayerModel(name)
    local model = GetHashKey("mp_male")
    local player = PlayerId()
    
    if not IsModelValid(model) then return end
    PerformRequest(model)
    
    if HasModelLoaded(model) then
        Citizen.InvokeNative(0xED40380076A31506, player, model, false)
        Citizen.InvokeNative(0x283978A15512B2FE, PlayerPedId(), true)
        SetModelAsNoLongerNeeded(model)
    end
end

local function PerformRequest(hash)
    print("requesting model " .. hash)

    RequestModel(hash, 0) -- RequestModel

    local times = 1

    print("requested " .. times .. " times")

    while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, hash) do -- HasModelLoaded
        Citizen.InvokeNative(0xFA28FE3A6246FC30, hash, 0) -- RequestModel

        times = times + 1

        print("requested " .. times .. " times")

        Citizen.Wait(0)
        
        if times >= 100 then break end
    end
end
