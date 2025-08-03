-- Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Window
local Window = redzlib:MakeWindow({
  Title = "Kira Hub - Brookhaven RP 🏡",
  SubTitle = " English",
  SaveFolder = "Kira | KiraLibrary.lua"
})

-- Minimize Button
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://91861614925309", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

Window:SelectTab(Tab1)

-- Tab - Information
local Information = Window:MakeTab({"Informação", "Home"})

Information:AddSection({"Information"})

Information:AddSection({"Credits"})

Information:AddDiscordInvite({
    Name = "gelo",
    Description = "Are you experiencing problems with the Hub and want to report them? Contact me on discord.",
    Logo = "rbxassetid://91861614925309",
    Invite = "@todistraido",
})
