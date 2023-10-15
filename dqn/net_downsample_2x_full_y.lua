--[[
net downsample
]]

require "image"
require "Scale"

local function create_network(args)
    -- Y (luminance)
    return nn.Scale(84, 84, true)
end

return create_network
