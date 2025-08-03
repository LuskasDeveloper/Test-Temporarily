-- Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Window
local Window = redzlib:MakeWindow({
  Title = "redz Hub : Blox Fruits",
  SubTitle = "by redz9999",
  SaveFolder = "testando | redz lib v5.lua"
})

-- Minimize Button
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

Window:SelectTab(Tab1)

-- Tab : Information
local Information = Window:MakeTab({"Information", "Home"})

Information:AddDiscordInvite({
    Name = "Luck1ng Team",
    Description = "Join Server",
    Logo = "rbxassetid://18751483361",
    Invite = "https://discord.gg/0",
})
