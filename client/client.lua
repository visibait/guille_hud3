ESX = nil 

Citizen.CreateThread(function() 
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
        Citizen.Wait(20) 
    end 
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(900)
        local player = GetPlayerPed(-1)
        local ped = PlayerPedId(-1)
        local o2
        
        TriggerEvent('esx_status:getStatus', 'hunger', function(status) comida = status.val / 10000 end)
       
        TriggerEvent('esx_status:getStatus', 'thirst', function(status) bebida = status.val / 10000 end)

        TriggerEvent("guille_stress:getStress", function(status) stress = status end)

        local swim = IsPedSwimmingUnderWater(ped)
        o2 = GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10
        SendNUIMessage({
            
            vida = GetEntityHealth(PlayerPedId())-100;
            escudito = GetPedArmour(PlayerPedId());
            bebida = bebida;
            comida = comida;
            o2 = o2;
            swim = swim;
            stress = Config.Stress;
            stressval = stress; 

        })

    end
end)
