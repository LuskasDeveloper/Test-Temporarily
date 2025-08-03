-- Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Window
local Window = redzlib:MakeWindow({
  Title = "Gelo Hub",
  SubTitle = " Brookhaven RP 🏡",
  SaveFolder = "Gelo | GeloLibrary.lua"
})

-- Minimize Button
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://76374571518466", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

Window:SelectTab(Tab1)

-- Tab - Information
local Information = Window:MakeTab({"Informacao", "Home"})

Information:AddDiscordInvite({
    Name = "@gelo",
    Description = "Copiar",
    Logo = "rbxassetid://76374571518466",
    Invite = "@todistraido",
})

-- Tab - Troll Player
local TrollPlayer = Window:MakeTab({ Title = "Troll Player", Icon = "User" })

    local args = { [1] = "PickingTools", [2] = "Couch" }
    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

    local couch = LocalPlayer.Backpack:WaitForChild("Couch", 2)
    if not couch then
        warn("Erro: Sofá não encontrado no Backpack")
        return
    end

    couch.Name = "Chaos.Couch"
    local seat1 = couch:FindFirstChild("Seat1")
    local seat2 = couch:FindFirstChild("Seat2")
    local handle = couch:FindFirstChild("Handle")
    if seat1 and seat2 and handle then
        seat1.Disabled = true
        seat2.Disabled = true
        handle.Name = "Handle "
    else
        warn("Erro: Componentes do sofá não encontrados")
        return
    end
    couch.Parent = LocalPlayer.Character

    local tet = Instance.new("BodyVelocity", seat1)
    tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    tet.P = 1250
    tet.Velocity = Vector3.new(0, 0, 0)
    tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

    repeat
        for m = 1, 35 do
            local pos = { x = 0, y = 0, z = 0 }
            local tRoot = targetPlayer.Character and targetPlayer.Character.HumanoidRootPart
            if not tRoot then break end
            pos.x = tRoot.Position.X + (tRoot.Velocity.X / 2)
            pos.y = tRoot.Position.Y + (tRoot.Velocity.Y / 2)
            pos.z = tRoot.Position.Z + (tRoot.Velocity.Z / 2)
            seat1.CFrame = CFrame.new(Vector3.new(pos.x, pos.y, pos.z)) * CFrame.new(-2, 2, 0)
            task.wait()
        end
        tet:Destroy()
        couch.Parent = LocalPlayer.Backpack
        task.wait()
        couch:FindFirstChild("Handle ").Name = "Handle"
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        task.wait()
        couch.Parent = LocalPlayer.Backpack
        couch.Handle.Name = "Handle "
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        tet = Instance.new("BodyVelocity", seat1)
        tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        tet.P = 1250
        tet.Velocity = Vector3.new(0, 0, 0)
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
    until targetPlayer.Character and targetPlayer.Character.Humanoid and targetPlayer.Character.Humanoid.Sit == true
    task.wait()
    couch.Parent = LocalPlayer.Backpack
    seat1.CFrame = CFrame.new(Vector3.new(9999, -450, 9999))
    seat2.CFrame = CFrame.new(Vector3.new(9999, -450, 9999))
    couch.Parent = LocalPlayer.Character
    task.wait(0.1)
    couch.Parent = LocalPlayer.Backpack
    task.wait(2)
    local bv = seat1:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W")
    if bv then bv:Destroy() end
    ReplicatedStorage.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
end
    local PlayerSection = Troll:AddSection({ Name = "Troll Player" })

    -- Função para obter lista de jogadores
    local function getPlayerList()
        local players = Players:GetPlayers()
        local playerNames = {}
        for _, player in ipairs(players) do
            if player ~= LocalPlayer then
                table.insert(playerNames, player.Name)
            end
        end
        return playerNames
    end

    local killDropdown = Troll:AddDropdown({
        Name = "Selecionar Jogador",
        Options = getPlayerList(),
        Default = "",
        Callback = function(value)
            selectedPlayerName = value
            getgenv().Target = value
            print("Jogador selecionado: " .. tostring(value))
        end
    })

    Troll:AddButton({
        Name = "Atualizar Player List",
        Callback = function()
            local tablePlayers = Players:GetPlayers()
            local newPlayers = {}
            if killDropdown and #tablePlayers > 0 then
                for _, player in ipairs(tablePlayers) do
                    if player.Name ~= LocalPlayer.Name then
                        table.insert(newPlayers, player.Name)
                    end
                end
                killDropdown:Set(newPlayers)
                print("Lista de jogadores atualizada: ", table.concat(newPlayers, ", "))
                if selectedPlayerName and not Players:FindFirstChild(selectedPlayerName) then
                    selectedPlayerName = nil
                    getgenv().Target = nil
                    killDropdown:SetValue("")
                    print("Seleção resetada, jogador não está mais no servidor.")
                end
            else
                print("Erro: Dropdown não encontrado ou nenhum jogador disponível.")
            end
        end
    })

    Troll:AddButton({
        Name = "Teleportar até o Player",
        Callback = function()
            if not selectedPlayerName or not Players:FindFirstChild(selectedPlayerName) then
                print("Erro: Player não selecionado ou não existe")
                return
            end
            local character = LocalPlayer.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                warn("Erro: HumanoidRootPart do jogador local não encontrado")
                return
            end

            local targetPlayer = Players:FindFirstChild(selectedPlayerName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            else
                print("Erro: Player alvo não encontrado ou sem HumanoidRootPart")
            end
        end
    })

    Troll:AddToggle({
        Name = "Spectar Player",
        Default = false,
        Callback = function(value)
            local Camera = workspace.CurrentCamera

            local function UpdateCamera()
                if value then
                    local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                    if targetPlayer and targetPlayer.Character then
                        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            Camera.CameraSubject = humanoid
                        end
                    end
                else
                    if LocalPlayer.Character then
                        local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            Camera.CameraSubject = humanoid
                        end
                    end
                end
            end

            if value then
                if not getgenv().CameraConnection then
                    getgenv().CameraConnection = RunService.Heartbeat:Connect(UpdateCamera)
                end
            else
                if getgenv().CameraConnection then
                    getgenv().CameraConnection:Disconnect()
                    getgenv().CameraConnection = nil
                end
                UpdateCamera()
            end
        end
    })

    local MethodSection = Troll:AddSection({ Name = "Métodos" })

    Troll:AddDropdown({
        Name = "Selecionar Método para Matar",
        Options = {"Couch"},
        Default = "",
        Callback = function(value)
            methodKill = value
            print("Método selecionado: " .. tostring(value))
        end
    })

    Troll:AddButton({
        Name = "Matar Player",
        Callback = function()
            if not selectedPlayerName or not Players:FindFirstChild(selectedPlayerName) then
                print("Erro: Player não selecionado ou não existe")
                return
            end
            if methodKill == "Couch" then
                KillPlayerCouch()
    })
local Tab = Window:MakeTab({"AUDIOS", "music"})

-- Create a section
Tab:AddSection({"Audio Todos os Players"})

-- Lista de áudios
local audios = {
    {Name = "Yamete Kudasai", ID = 108494476595033},
    {Name = "Gritinho", ID = 5710016194},
    {Name = "Jumpscare Horroroso", ID = 85435253347146},
    {Name = "Áudio Alto", ID = 6855150757},
    {Name = "Ruído", ID = 120034877160791},
    {Name = "Jumpscare 2", ID = 110637995610528},
    {Name = "Risada Da Bruxa Minecraft", ID = 116214940486087},
    {Name = "The Boiled One", ID = 137177653817621},
    {Name = "Deitei Um Ave Maria Doido", ID = 128669424001766},
    {Name = "Mandrake Detected", ID = 9068077052},
    {Name = "Aaaaaaaaa", ID = 80156405968805},
    {Name = "AAAHHHH", ID = 9084006093},
    {Name = "amongus", ID = 6651571134},
    {Name = "Sus", ID = 6701126635},
    {Name = "Gritao AAAAAAAAA", ID = 5853668794},
    {Name = "UHHHHH COFFCOFF", ID = 7056720271},
    {Name = "SUS", ID = 7153419575},
    {Name = "Sonic.exe", ID = 2496367477},
    {Name = "Tubers93 1", ID = 270145703},
    {Name = "Tubers93 2", ID = 18131809532},
    {Name = "John's Laugh", ID = 130759239},
}

local selectedAudioID

-- Adicionar uma textbox para inserir o ID do áudio
Tab:AddTextBox({
    Name = "Insira o ID do Áudio ou Musica",
    Description = "Digite o ID do áudio",
    PlaceholderText = "ID do áudio...",
    Callback = function(value)
        selectedAudioID = tonumber(value)
    end
})

-- Adicionar uma dropdown para selecionar o áudio
local audioNames = {}
for _, audio in ipairs(audios) do
    table.insert(audioNames, audio.Name)
end

TrollPlayer:AddDropdown({
    Name = "Selecione o Áudio",
    Description = "Escolha um áudio da lista...",
    Options = audioNames,
    Default = audioNames[1],
    Flag = "selected_audio",
    Callback = function(value)
        for _, audio in ipairs(audios) do
            if audio.Name == value then
                selectedAudioID = audio.ID
                break
            end
        end
    end
})
