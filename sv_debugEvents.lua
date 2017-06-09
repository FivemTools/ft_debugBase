-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T13:49:21+02:00
-- @License: GNU General Public License v3.0

-- Import lib
require "resources/ft_gamemode/sv_utils"

-- Allows the server to spawn the player
RegisterServerEvent('ft_debug:SvDebug')
AddEventHandler('ft_debug:SvDebug', function(data)

  print("--------- debug ------------")
  tprint(data)
  print("-----------------------------")

end)

-- Save player positions in file
RegisterServerEvent("ft_debugPlayer:SvSaveToFile")
AddEventHandler("ft_debugPlayer:SvSaveToFile", function(string, name)

  local file = io.open('resources/' .. name .. '.txt', "a")
  newFile = string
  file:write(newFile)
  file:flush()
  file:close()

end)
