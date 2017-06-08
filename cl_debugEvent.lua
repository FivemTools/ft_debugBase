-- get all item
RegisterNetEvent('ft_debug:ClDebug')
AddEventHandler('ft_debug:ClDebug', function()
  Citizen.CreateThread(function()

    TriggerServerEvent("ft_debug:SvDebug", Player)

  end)
end)