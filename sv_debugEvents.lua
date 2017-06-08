-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:37:45+02:00
-- @License: GNU General Public License v3.0

-- Import lib
require "resources/ft_gamemode/sv_utils"

-- Allows the server to spawn the player
RegisterServerEvent('ft_debug:SvDebug')
AddEventHandler('ft_debug:SvDebug', function(debug)

  print("--------- debug ------------")
  if debug ~= nil then
    tprint(debug)
  else
    print("Empty")
  end
  print("-----------------------------")

end)
