local ipc    = require("hs.ipc")
local timer  = require("hs.timer")
local spaces = require("hs.spaces")

------------------------------------------ start of switchSpaces
-- Wait time for mission control in seconds to perform certain functions
local mcWaitTime = 0.275
-- spaces.MCwaitTime = mcWaitTime

local function getAllSpaceIDs()
    local spaceIDs = {}
    for _, space in pairs(spaces.allSpaces()) do
        table.insert(spaceIDs, space)
    end
    return spaceIDs[1]
end

local function getCurrentSpaceID()
    local tspace = spaces.activeSpaces()
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

function GoNextSpace()
    local nextSpaceID = getNextSpaceID()
    if nextSpaceID then
        spaces.gotoSpace(nextSpaceID)
    end
end

function GoPrevSpace()
    local previousSpaceID = getPreviousSpaceID()
    if previousSpaceID then
        spaces.gotoSpace(previousSpaceID)
    end
end

function RemoveCurrentSpace()
    local toRemoveSpaceID = getCurrentSpaceID()
    GoPrevSpace()
    timer.doAfter(mcWaitTime, function()
        spaces.removeSpace(toRemoveSpaceID)
    end)
end

function AddSpace()
    spaces.addSpaceToScreen()
end

-------------------------------------- end of switchSpaces

-- Keybindings
-- local windowKey = {"cmd", "alt", "ctrl"}
--
-- hs.hotkey.bind(windowKey, "right", function()
--     local nextSpaceID = getNextSpaceID()
--     if nextSpaceID then
--         hs.spaces.gotoSpace(nextSpaceID)
--     end
-- end)
--
-- hs.hotkey.bind(windowKey, "left", function()
--     local previousSpaceID = getPreviousSpaceID()
--     if previousSpaceID then
--         hs.spaces.gotoSpace(previousSpaceID)
--     end
-- end)
--

