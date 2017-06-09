-- @Date:   2017-06-09T13:23:54+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-09T13:25:52+02:00
-- @License: GNU General Public License v3.0

-- Print tables
function tprint (data)

  if type(data) == "table" then
    indent = 0
    for k, v in pairs(data) do
      formatting = string.rep("  ", indent) .. k .. ": "
      if type(v) == "table" then
        print(formatting)
        tprint(v, indent + 1)
      else
        print(formatting .. v)
      end
    end
  else
    print(data)
  end

end
