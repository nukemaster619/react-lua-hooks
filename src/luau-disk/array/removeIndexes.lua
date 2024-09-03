local removeSortedIndexes = require(script.Parent:WaitForChild('removeSortedIndexes'))
local sort = require(script.Parent:WaitForChild('sort'))

local function removeIndexes<T>(array: { T }, indexes: { number }): { T }
    local removeLength = #indexes
    local arrayLenth = #array

    if removeLength == 0 or arrayLenth == 0 then
        return array
    end

    local sortedIndexes = sort(indexes)

    return removeSortedIndexes(array, sortedIndexes)
end

return removeIndexes
