-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T18:36:57+02:00
-- @License: GNU General Public License v3.0

-- Allows the server to spawn the player
RegisterServerEvent('ft_debug:SvDebug')
AddEventHandler('ft_debug:SvDebug', function()

  print("--------- debug ------------")
  -- tprint(data)
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
