local PlayerClass = {}
PlayerClass.__index = PlayerClass

PlayerClass.Data = {}

function PlayerClass.new(player)
    local self = setmetatable({}, PlayerClass)
    self.Player = player
    self.PlayerID = player.UserId

    self.Data = {
        AllowedMinutes = 1;
        CurrentMinutes = 0;
        PauseState = "Enabled";
    }

    return self
end

function PlayerClass:HasExceededTime()
    return self.Data.AllowedMinutes <= self.Data.CurrentMinutes
end

function PlayerClass:GetPauseState()
    return self.Data.PauseState
end

return PlayerClass