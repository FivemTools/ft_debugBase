-- @Date:   2017-06-11T23:21:20+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:21:20+02:00
-- @License: GNU General Public License v3.0

-- Print tables
function tprint (tbl, indent)

  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    else
      print(formatting .. v)
    end
  end

end
