-- Wait time for mission control in seconds to perform certain functions
hs.spaces.MCwaitTime = 0.275

-- start of switchSpaces

local function getAllSpaceIDs()
    local spaces = hs.spaces.allSpaces()
    local spaceIDs = {}
    for _, space in pairs(spaces) do
        table.insert(spaceIDs, space)
    end
    return spaceIDs[1]
end

local function getCurrentSpaceID()
    local tspace = hs.spaces.activeSpaces()
    for _, space in pairs(tspace) do
        return space
    end
end

-- gets next space id by finding current space id from getCurrentSpaceID & then finding it in getAllSpaceIDs & then returning the next space id
local function getNextSpaceID()
    local currentSpaceID = getCurrentSpaceID()
    local spaceIDs = getAllSpaceIDs()
    for i, spaceID in pairs(spaceIDs) do
        if spaceID == currentSpaceID then
            return spaceIDs[i + 1]
        end
    end
end

local function getPreviousSpaceID()
    local currentSpaceID = getCurrentSpaceID()
    local spaceIDs = getAllSpaceIDs()
    for i, spaceID in pairs(spaceIDs) do
        if spaceID == currentSpaceID then
            return spaceIDs[i - 1]
        end
    end
end

-- end of switchSpaces

local windowKey = {"cmd", "alt", "ctrl"}

-- Keybindings
hs.hotkey.bind(windowKey, "right", function()
    local nextSpaceID = getNextSpaceID()
    if nextSpaceID then
        hs.spaces.gotoSpace(nextSpaceID)
    end
end)

hs.hotkey.bind(windowKey, "left", function()
    local previousSpaceID = getPreviousSpaceID()
    if previousSpaceID then
        hs.spaces.gotoSpace(previousSpaceID)
    end
end)

