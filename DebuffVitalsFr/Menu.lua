local DEBUG_ENABLED = DEBUG_ENABLED
-- ------------------------------------------------------------------------
-- Menu and Menu Utilities
-- ------------------------------------------------------------------------
TargetFrameMenu = class (Turbine.UI.ContextMenu)

function TargetFrameMenu:Constructor()
    Turbine.UI.ContextMenu.Constructor(self)

    local menuItems=self:GetItems()

    menuItems:Add(Turbine.UI.MenuItem("Nouvelle cible"))
    menuItems:Get(1).Click = function(sender, args)
        AddNewTarget()
    end

    menuItems:Add(Turbine.UI.MenuItem("Supprimer cible"))
    menuItems:Get(2).Click = function(sender, args)
        RemoveTarget(self.invoker.ID)
    end

    menuItems:Add(Turbine.UI.MenuItem("Effets"))

    menuItems:Add(Turbine.UI.MenuItem("Afficher", true))
    local showItems = menuItems:Get(4):GetItems()

    showItems:Add(Turbine.UI.MenuItem("Effets"))
    showItems:Get(1).Click = function(sender, args)
        self.invoker.ShowEffects = not self.invoker.ShowEffects
        self.invoker:SetEnabledEffects()
        self.invoker:Resize()
    end

    showItems:Add(Turbine.UI.MenuItem("Moral"))
    showItems:Get(2).Click = function(sender, args)
        self.invoker.ShowMorale = not self.invoker.ShowMorale
        self.invoker:Resize()
    end

    showItems:Add(Turbine.UI.MenuItem("Puissance"))
    showItems:Get(3).Click = function(sender, args)
        self.invoker.ShowPower = not self.invoker.ShowPower
        self.invoker:Resize()
    end

    menuItems:Add(Turbine.UI.MenuItem("Options", true))
    local optionsItems = menuItems:Get(5):GetItems()
    optionsItems:Add(Turbine.UI.MenuItem("Sauvegarder position"))
    optionsItems:Get(1).Click = function(sender, args)
        LockedPosition = not LockedPosition
    end
    optionsItems:Add(Turbine.UI.MenuItem("Sauvegarder position de la fênetre"))
    optionsItems:Get(2).Click = function(sender, args)
        SaveFramePositions = not SaveFramePositions
    end

    optionsItems:Add(Turbine.UI.MenuItem("Sauvegarder paramètres "))
    optionsItems:Get(3).Click = function(sender, args)
        SaveSettings()
    end
end

function TargetFrameMenu:CreateEffectsMenu()
    local effectsGroups = FrameMenu:GetItems():Get(3):GetItems()

    effectsGroups:Clear()

    for k = 1, #EffectsSet do
        effect = Turbine.UI.MenuItem(EffectsSet[k][2], true, true)
        effect.id = k
        effect.Click = function(sender, args)
            self.invoker.EnabledEffectsToggles[k][2] = not self.invoker.EnabledEffectsToggles[k][2]
            self.invoker:SetEnabledEffects()
            self.invoker:Resize()
        end
        effectsGroups:Add(effect)
    end
end
