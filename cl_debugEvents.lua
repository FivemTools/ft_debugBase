-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-10T17:19:58+02:00
-- @License: GNU General Public License v3.0

-- get all item
RegisterNetEvent('ft_debugBase:ClDebug')
AddEventHandler('ft_debugBase:ClDebug', function(data)
  Citizen.CreateThread(function()

    TriggerServerEvent("ft_debug:SvDebug", data)

  end)
end)

-- Save player pos
RegisterNetEvent('ft_debugBase:ClPos')
AddEventHandler('ft_debugBase:ClPos', function(name)
  Citizen.CreateThread(function()

    local player = GetPlayerPed(-1)
    local pos = GetEntityCoords(player)

    local string = "{ x = " .. pos.x .. ", y = " .. pos.y .. ", z = " .. pos.z .. ", name = '" .. name .. "' },\n"
    TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "x:" .. pos.x .. " - y:" .. pos.y .. " - z:" .. pos.z)
    TriggerServerEvent('ft_debugBase:SvSaveToFile', string, "pos")

  end)
end)
