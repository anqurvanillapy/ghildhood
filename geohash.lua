gh = {}

function gh.geohash (latitude, longitude, datedow)
    local m = require "md5"
    local h = m.sumhexa(datedow)
    local prefix = "0x0."
    local p = tostring(tonumber(prefix .. h:sub(0, 15)))
    local q = tostring(tonumber(prefix .. h:sub(17, 32)))
    print(string.format("%d%s %d%s", latitude, p:sub(2), longitude, q:sub(2)))
end

return gh
