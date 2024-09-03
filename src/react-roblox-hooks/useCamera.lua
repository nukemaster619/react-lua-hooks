local React = require(script.Parent.Parent.Parent:WaitForChild("react"))

local useMemo = React.useMemo

local function useCamera(): Camera
    local workspace = game:GetService("Workspace")

    local camera = useMemo(function()
        return workspace.CurrentCamera
    end, { workspace })

    return camera
end

return useCamera
