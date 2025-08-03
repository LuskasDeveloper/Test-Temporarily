-- Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Window
local Window = redzlib:MakeWindow({
  Title = " Hub : Brookhaven RP 🏡",
  SubTitle = " [🇧🇷] Português",
  SaveFolder = "Gelo | GeloLibrary.lua"
})

-- Minimize Button
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://91861614925309", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

Window:SelectTab(Tab1)

-- Tab - Information
local Information = Window:MakeTab({"Informação", "Home"})

Information:AddSection({"Informação"})

Information:AddSection({"Credits"})

Information:AddDiscordInvite({
    Name = "@gelo",
    Description = "Copiar",
    Logo = "rbxassetid://91861614925309",
    Invite = "@todistraido",
})
