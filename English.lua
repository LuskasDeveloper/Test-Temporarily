-- Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LuskasDeveloper/Library/refs/heads/main/Library.lua"))()

-- Window
local Window = redzlib:MakeWindow({
  Title = "Kira Hub",
  SubTitle = " English",
  SaveFolder = "Kira | KiraLibrary.lua"
})

-- Minimize Button
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://120636613835185", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

Window:SelectTab(Tab1)

-- Tab - Information
local Information = Window:MakeTab({"Information", "Home"})

Information:AddSection({"Information"})

Information:AddSection({"Credits"})

Information:AddDiscordInvite({
    Name = "kira",
    Description = "Are you experiencing problems with the Hub and want to report them? Contact me on discord.",
    Logo = "rbxassetid://79454992693444",
    Invite = "@todistraido",
})
