local useCamera = require(script.Parent.useCamera)
local usePropertyChange = require(script.Parent.usePropertyChange)

local function useCameraCFrame(fn: (CFrame) -> (), deps: { any })
    local camera = useCamera()

    usePropertyChange(camera, 'CFrame', fn, deps)
end

return useCameraCFrame
