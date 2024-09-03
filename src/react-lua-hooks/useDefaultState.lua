local React = require(script.Parent.Parent.Parent.react)

local SetStateType = require(script.Parent.SetStateType)

local useState = React.useState

type SetState<T> = SetStateType.SetState<T>

local function useDefaultState<T>(initialValue: T?, defaultValue: T): (T, SetState<T>)
    local value, setValue = useState(initialValue)

    return if value == nil then defaultValue else value, setValue
end

return useDefaultState
