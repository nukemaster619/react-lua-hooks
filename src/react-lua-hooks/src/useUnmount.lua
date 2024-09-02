local React = require(script.Parent.Parent.Parent.react)

local useEffect = React.useEffect
local useRef = React.useRef

local function useUnmount(fn: () -> ())
    local onUnmount = useRef((nil :: any) :: () -> ())

    onUnmount.current = fn

    useEffect(function()
        return (onUnmount.current :: () -> ())()
    end, {})
end

return useUnmount
