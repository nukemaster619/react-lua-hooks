local useCamera = require(script.Parent.useCamera)
local usePropertyChange = require(script.Parent.usePropertyChange)

local function useViewportSize(fn: (Vector2) -> (), deps: { any })
    local camera = useCamera()

    usePropertyChange(camera, 'ViewportSize', fn, deps)
end

return useViewportSize
