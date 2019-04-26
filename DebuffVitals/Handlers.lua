local DEBUG_ENABLED = DEBUG_ENABLED
-- ------------------------------------------------------------------------
-- Callbacks
-- ------------------------------------------------------------------------
function AddCallback(object, event, callback)
    if (object[event] == nil) then
        object[event] = callback;
    else
        if (type(object[event]) == "table") then
            table.insert(object[event], callback);
        else
            object[event] = {object[event], callback};
        end
    end
    return callback;
end

function RemoveCallback(object, event, callback)
    if (object[event] == callback) then
        object[event] = nil;
    else
        if (type(object[event]) == "table") then
            local size = table.getn(object[event]);
            for i = 1, size do
                if (object[event][i] == callback) then
                    table.remove(object[event], i);
                    break;
                end
            end
        end
    end
end

-- ------------------------------------------------------------------------
-- Target Change Handler
-- ------------------------------------------------------------------------
function TargetChangeHandler(sender, args)
    for k=1, #TargetFrames do
        TargetFrame.UpdateTarget(TargetFrames[k])
    end
end

-- ------------------------------------------------------------------------
-- Morale Change Handler
-- ------------------------------------------------------------------------
function MoraleChangedHandler(sender, args)
    local CurrentFrame = sender.self

    if not CurrentFrame.Target then
        return
    end
       
    local TargetMorale = CurrentFrame.Target:GetMorale()

    if TargetMorale <= 0 then 
        if CurrentFrame.Locked then CurrentFrame.Lock.MouseClick() end
    else
        local TargetMaxMorale = CurrentFrame.Target:GetMaxMorale()
        local TargetTempMorale = CurrentFrame.Target:GetTemporaryMorale()
        local TargetMaxTempMorale = CurrentFrame.Target:GetMaxTemporaryMorale()
    
        CurrentFrame.Morale.Title:SetText(string.format("%s", FormatBigNumbers(TargetMorale))
                        .." / "..string.format("%s", FormatBigNumbers(TargetMaxMorale)).." ")
    
        if TargetMorale <= 1 then
            CurrentFrame.Morale.Percent:SetText(string.format("0.0%%"))
        else
            CurrentFrame.Morale.Percent:SetText(string.format("%.1f", 100 * TargetMorale / TargetMaxMorale).."%")
        end
    
        local BarSize = math.floor(TargetMorale/TargetMaxMorale * FrameWidth)
        CurrentFrame.Morale.Bar:SetSize(BarSize, ControlHeight)
        CurrentFrame.Morale.Bar:SetPosition(FrameWidth - BarSize, CurrentFrame.Morale.Bar:GetTop())
    end
end

-- ------------------------------------------------------------------------
-- Power Change Handler
-- ------------------------------------------------------------------------
function PowerChangedHandler(sender, args)
    local CurrentFrame = sender.self

    if not CurrentFrame.Target then
        if DEBUG_ENABLED then Turbine.Shell.WriteLine("Skip PowerChangedHandler.  No target.") end
        return
    end
    
    local TargetPower = CurrentFrame.Target:GetPower()
    local TargetMaxPower = CurrentFrame.Target:GetMaxPower()
    local TargetTempPower = CurrentFrame.Target:GetTemporaryPower()
    local TargetMaxTempPower = CurrentFrame.Target:GetMaxTemporaryPower()
    CurrentFrame.Power.Title:SetText(string.format("%s", FormatBigNumbers(TargetPower))
                    .." / "..string.format("%s", FormatBigNumbers(TargetMaxPower)).." ")

    if TargetPower <= 1 then
        CurrentFrame.Power.Percent:SetText(string.format("0.0%%"))
    else
        CurrentFrame.Power.Percent:SetText(string.format("%.1f", 100 * TargetPower / TargetMaxPower).."%")
    end

    local BarSize = math.floor(TargetPower/TargetMaxPower * FrameWidth)
    CurrentFrame.Power.Bar:SetSize(BarSize, ControlHeight)
    CurrentFrame.Power.Bar:SetPosition(FrameWidth - BarSize, CurrentFrame.Power.Bar:GetTop())
end

-- ------------------------------------------------------------------------
-- Effect Change Handler
-- ------------------------------------------------------------------------
function EffectsChangedHandler(sender, args)
    local CurrentFrame = sender.self

    if not CurrentFrame.Target then
        if DEBUG_ENABLED then Turbine.Shell.WriteLine("Skip... no target....") end
        return
    end

    CurrentFrame:SetWantsUpdates(true)    
end
