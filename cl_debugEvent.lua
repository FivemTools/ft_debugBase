-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T13:32:33+02:00
-- @License: GNU General Public License v3.0

-- get all item
RegisterNetEvent('ft_debug:ClDebug')
AddEventHandler('ft_debug:ClDebug', function(data)
  Citizen.CreateThread(function()

    TriggerServerEvent("ft_debug:SvDebug", data)

  end)
end)

-- Save player pos
RegisterNetEvent('ft_debugPlayer:SvPos')
AddEventHandler('ft_debugPlayer:SvPos', function(args)
  Citizen.CreateThread(function()
    local player = GetPlayerPed(-1)
    local pos = GetEntityCoords(player)
    local name = ""

    for key, value in pairs( args ) do

      if key > 1 then
        name = name .. " " .. value
      end

    end

    local string = "{ x = " .. pos.x .. ", y = " .. pos.y .. ", z = " .. pos.z .. ", name = '" .. name .. "' },\n"
    TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "x:" .. pos.x .. " - y:" .. pos.y .. " - z:" .. pos.z)
    TriggerServerEvent('ft_debugPlayer:SvSavePos', string)
  end)
end)
