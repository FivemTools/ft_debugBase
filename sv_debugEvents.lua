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
