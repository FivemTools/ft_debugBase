-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T13:47:45+02:00
-- @License: GNU General Public License v3.0

-- Import lib
require "resources/ft_gamemode/sv_utils"

-- Allows the server to spawn the player
RegisterServerEvent('ft_debug:SvDebug')
AddEventHandler('ft_debug:SvDebug', function(data)

  print("--------- debug ------------")
  if debug ~= nil then
    tprint(data)
  else
    print("Empty")
  end
  print("-----------------------------")

end)

-- Save player positions in file
RegisterServerEvent("ft_debugPlayer:SvSavePos")
AddEventHandler("ft_debugPlayer:SvSavePos", function(pos)

  local file = io.open('resources/positions.txt', "a")
  newFile = pos
  file:write(newFile)
  file:flush()
  file:close()

end)
