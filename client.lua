-- Oskel From FiveM Fourm.
-- Made in 12/10/2021.
-- Release is free and not for sale!
-- Please follow my scripts! :D

-- # Trigger For kashacters -> "spawnselector:setNui", spawn

local ESX, selectedspawnposition = nil
local spawn = nil
local LastLocation = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) 
			ESX = obj 
        end)
        
		Citizen.Wait(0)
	end
end)

--CODE
local camZPlus1 = 1500
local camZPlus2 = 50
local pointCamCoords = 75
local pointCamCoords2 = 0
local cam1Time = 500
local cam2Time = 1000

RegisterNUICallback("SpawnPlayer", function()
	if selectedspawnposition ~= nil then
		SpawnPlayer(selectedspawnposition)
	else
        TriggerEvent('spawnselector:setNui')
		print("You need to select a spawn point!")
        TriggerEvent('notification', "You need to select a spawn point!", 15000)
	end
end)

RegisterNUICallback("LastLocation", function()
    selectedspawnposition = LastLocation
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnMirror", function()
    selectedspawnposition = { x = 1036.73, y = -756.16, z = 57.77, h = 145.87 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnAirport", function()
    selectedspawnposition = { x = -1037.74, y = -2738.04, z = 20.1693, h = 282.91 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnBus", function()
    selectedspawnposition = { x = -216.803, y = -1037.520, z = 31.140, h = 0.0 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnPolice", function()
    selectedspawnposition = { x = 425.06, y = -979.67, z = 30.71, h = 267.37 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnTrain", function()
    selectedspawnposition = { x = -206.674, y = -1015.1, z = 30.1381, h = 282.91 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnPaleto", function()
    selectedspawnposition = { x = -215.027, y = 6218.83, z = 31.4915, h = 282.91 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnVinewood", function()
    selectedspawnposition = { x = 328.52, y = -200.65, z = 54.23, h = 156.62 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnSandy", function()
    selectedspawnposition = { x = 1877.17, y = 3705.23, z = 33.22, h = 119.55 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnPDM", function()
    selectedspawnposition = { x = -64.05, y = -1109.15, z = 26.29, h = 89.76 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnForumDrive", function()
    selectedspawnposition = { x = -156.28, y = -1547.75, z = 34.85, h = 125.77 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnBallas", function()
    selectedspawnposition = { x = 327.95, y = -203.38, z = 54.09, h = 153.82 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnVagos", function()
    selectedspawnposition = { x = 363.48, y = -1980.76, z = 24.21, h = 355.64 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnGarageQ", function()
    selectedspawnposition = { x = 272.87, y = -354.53, z = 44.92, h = 173.48 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnGarageT", function()
    selectedspawnposition = { x = 208.92, y = -810.95, z = 30.84, h = 155.12 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnVinewood", function()
    selectedspawnposition = { x = 328.52, y = -200.65, z = 54.23, h = 156.62 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnHospital", function()
    selectedspawnposition = { x =  283.83, y = -578.6, z = 43.21, h = 103.61 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)


function SpawnPlayer(Location)
    local pos = Location
    local ped = PlayerPedId()
    SetNuiFocus(false, false)

    DoScreenFadeOut(500)
    Citizen.Wait(500)
    SetEntityCoords(ped, pos.x, pos.y, pos.z)
    Citizen.Wait(500)
    SetEntityCoords(ped, pos.x, pos.y, pos.z)
    SetEntityHeading(ped, pos.h)
    FreezeEntityPosition(ped, false)
    RenderScriptCams(false, true, 500, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    SetCamActive(cam2, false)
    DestroyCam(cam2, true)
    SetEntityVisible(GetPlayerPed(-1), true)
    Citizen.Wait(500)
    DoScreenFadeIn(250)
    SetNuiFocus(false, false)

end

RegisterNetEvent("spawnselector:setNui")
AddEventHandler("spawnselector:setNui", function(spawn)
    LastLocation = spawn or { x = 0, y = 0, z = 0 }
    SetNuiFocus(true, true)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", spawn.x, spawn.y, spawn.z + camZPlus1, -85.00, 0.00, 0.00, 100.00, false, 0)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)

	SendNUIMessage({ Action = "OPEN_SPAWNMENU" })
end)

RegisterNetEvent("spawnselector:closeNui")
AddEventHandler("spawnselector:closeNui", function()
    SetNuiFocus(false, false)
    SendNUIMessage({ Action = "CLOSE_MENU" })
    
end)
