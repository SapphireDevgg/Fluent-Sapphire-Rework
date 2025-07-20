-- SapphireLib UI Loader (No Open/Close Button)
local SapphireLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SapphireDevgg/Fluent-Sapphire-Rework/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/SapphireDevgg/Fluent-Sapphire-Rework/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/SapphireDevgg/Fluent-Sapphire-Rework/refs/heads/main/InterfaceManager.lua"))()

local Window = SapphireLib:CreateWindow({
    Title = "SapphireLib " .. SapphireLib.Version,
    SubTitle = "By Sapphire Team",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Bloody",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = SapphireLib.Options

-- Add some UI example
Tabs.Main:AddParagraph({
    Title = "Welcome",
    Content = "This is a clean SapphireLib GUI without button."
})

-- Init managers
SaveManager:SetLibrary(SapphireLib)
InterfaceManager:SetLibrary(SapphireLib)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("SapphireLibScriptHub")
SaveManager:SetFolder("SapphireLibScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

SapphireLib:Notify({
    Title = "SapphireLib",
    Content = "Loaded without toggle button.",
    Duration = 6
})

SaveManager:LoadAutoloadConfig()
