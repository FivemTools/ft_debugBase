-- @Author: samuelds
-- @Date:   2017-06-08T23:28:39+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-10T12:23:43+02:00
-- @License: GNU General Public License v3.0

-- Allows the server to spawn the player
RegisterServerEvent('ft_debugBase:SvDebug')
AddEventHandler('ft_debugBase:SvDebug', function(data)

  local type = type(data)
  print("--------- debug ------------")
  if type ~= "string" and type ~= "number" and type ~= "boolean" and type ~= "nil" and type ~= "function" then
    tprint(data)
  elseif type ~= "function" then
    print(data)
  elseif type == "function" then
    print("function")
  else
    print(data)
  end
  print("-----------------------------")

end)

-- Save player positions in file
RegisterServerEvent("ft_debugBase:SvSaveToFile")
AddEventHandler("ft_debugBase:SvSaveToFile", function(string, name)

  local file = io.open('resources/' .. name .. '.txt', "a")
  newFile = string
  file:write(newFile)
  file:flush()
  file:close()

end)
