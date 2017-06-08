-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:37:36+02:00
-- @License: GNU General Public License v3.0

-- get all item
RegisterNetEvent('ft_debug:ClDebug')
AddEventHandler('ft_debug:ClDebug', function()
  Citizen.CreateThread(function()

    TriggerServerEvent("ft_debug:SvDebug", Player)

  end)
end)
