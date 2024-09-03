local function useLocalPlayer(): Player
    local player = game:GetService("Players").LocalPlayer

    return player
end

return useLocalPlayer
