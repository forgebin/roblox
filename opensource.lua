--STOP TAKING THE FUCKING SOURCE

--OrionHub source for future me: https://raw.githubusercontent.com/shlexware/Orion/main/source
--ACL for future me: loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'))()

local TCS = game:GetService("TextChatService")
local RStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

local Chat = function(Message)
    if isLegacy then
        local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
        ChatRemote:FireServer(Message, "All")
    else
        local Channel = TCS.TextChannels.RBXGeneral
        Channel:SendAsync(Message)
    end
end

local Fake = function(Message)
    if isLegacy then
        Players:Chat(Message)
    else
        local Channel = TCS.TextChannels.RBXGeneral
        -- Channel:SendAsync(("/e %s"):format(Message))
        -- ^^^ its too annoying
    end
end

local chars = {}
for i=97,122 do chars[#chars+1]=string.char(i) end
for i=65,90 do chars[#chars+1]=string.char(i) end

local RNG = function(length)
    local str = ""
    for i = 1, length do
        str = str .. chars[math.random(#chars)]
    end
    return str
end

local ResetFilter = function()
    for i = 1, 10 do
        local GUID = RNG(30) -- Increased length of random strings
        local Filler = "real"
        local Reset = ("%s %s"):format(GUID, Filler)
        task.spawn(function()
            Fake(Reset)
        end)
    end
end

local Connection = Instance.new("BindableFunction")

for _, c in getconnections(ChatBar.FocusLost) do
    c:Disconnect()
end

ChatBar.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        Connection:Invoke(ChatBar.Text)
        ChatBar.Text = ""
    end
end)

Connection.OnInvoke = function(Message)
    -- Message = Gen(Message) -- Assuming 'Gen' function is not defined
    Chat(Message)
    ResetFilter()
end
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Adonis_Anti_Cheat_Bypass"))()
    wait()
repeat task.wait() until game:IsLoaded()
--[[
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    game:GetService("Players").LocalPlayer:Kick("This game uses ModernChatService which Vadrifts does not support.")
    return
end
--]]
wait()
local function runPCScript()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.4.0", HidePremium = false, SaveConfig = save, ConfigFolder ="OrionTest", ScriptIntro = enabled, IntroText = "Vadrifts bypassing society" })

local startTime = tick()

local Tab = Window:MakeTab({
    Name = "Script Setup",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loading"
})
Tab:AddParagraph("Loading..", "Please wait")
Tab:AddParagraph("Quick Tip!","If the script isn't loading, it could be due to your device or executor!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Anthony's%20ACL"))()

local function loadScript()

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.4.0", HidePremium = false, SaveConfig = save, ConfigFolder = "OrionTest", IntroEnabled = false })

    local endTime = tick()
    local loadTime = endTime - startTime
    game.StarterGui:SetCore("SendNotification",
        { Title = "Loaded!", Text = "Succesfully loaded in " ..
        loadTime .. " seconds.", Duration = 5, })

    local Tab = Window:MakeTab({
        Name = "Home",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
local Section = Tab:AddSection({
    Name = "Discord"
})

local playerName = game.Players.LocalPlayer.Name

Tab:AddButton({
    Name = "Welcome " .. playerName .. ", updates n stuff @ our discord",
    Callback = function()
    end
})

Tab:AddButton({
    Name = "Discord | Click To Copy",
    Callback = function()
setclipboard("https://dsc.gg/vadriftz")
    end
}) 

local Section = Tab:AddSection({
    Name = "UI Stuff"
})

  Tab:AddButton({
    Name = "Close Interface",
    Callback = function()
OrionLib:Destroy()
    end
})

Tab:AddButton({
    Name = "Un-hide UI button (when ui closed)",
    Callback = function()
        local Toggle = Instance.new("ScreenGui")
        local UIToggle = Instance.new("TextButton")
        local CloseButton = Instance.new("TextButton")
        Toggle.Name = "Un-Hide"
        Toggle.Parent = game.CoreGui
        UIToggle.Name = "Un-hide"
        UIToggle.Parent = Toggle
        UIToggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        UIToggle.BackgroundTransparency = 0
        UIToggle.Position = UDim2.new(0, 0, 0.454706937, 0)
        UIToggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
        UIToggle.Font = Enum.Font.SourceSans
        UIToggle.Text = "Un-Hide!"
        UIToggle.TextColor3 = Color3.fromRGB(75, 0, 130)
        UIToggle.TextSize = 24.000
        UIToggle.TextXAlignment = Enum.TextXAlignment.Left

        local UserInputService = game:GetService("UserInputService")
        local dragging = false
        local dragStart
        local startPos

        local function updateDragging(input)
            local delta = input.Position - dragStart
            UIToggle.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        UIToggle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = UIToggle.Position
            end
        end)

        UIToggle.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                updateDragging(input)
            end
        end)

        UIToggle.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)

        local function executeScript()
            if OrionLib and OrionLib.Destroy then
                OrionLib:Destroy() -- Reduces lag
            end
            if loadScript then
                loadScript() -- Reopens script
            end
        end

        UIToggle.MouseButton1Click:Connect(executeScript)

        CloseButton.Name = "CloseButton"
        CloseButton.Parent = UIToggle
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.BackgroundTransparency = 0
        CloseButton.Position = UDim2.new(0.8, 0, 0.1, 0)
        CloseButton.Size = UDim2.new(0.2, 0, 0.2, 0)
        CloseButton.Font = Enum.Font.SourceSans
        CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        CloseButton.TextSize = 16
        CloseButton.Text = "X"
        CloseButton.MouseButton1Click:Connect(function()
            UIToggle:Destroy() -- Destroy the UI elements when the close button is clicked
        end)
    end
})


local Section = Tab:AddSection({
    Name = "Help"
})

 Tab:AddLabel("Your account must be 13+ for everything to work.")
 Tab:AddLabel("If something gets tagged, say something normal and try again.")
 Tab:AddLabel("Everyone can see the things you say in chat.")
 Tab:AddLabel("For more info go and ask on the Discord")

local Section = Tab:AddSection({
    Name = "Suggested (A-Z)"
})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")
local IsLegacy = (TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService)

local function checkForTag(message)
    local success, isTagged = pcall(function()
        return game:GetService("Chat"):FilterStringForBroadcast(message, game.Players.LocalPlayer)
    end)
    return success and isTagged ~= message
end

local function sendMessage(message)
    if checkForTag(message) then
        OrionLib:MakeNotification({
            Name = "Tag Detection",
            Content = "This bypass might be patched! Try clicking 'Fix Bypasses' and try again!",
            Duration = 5
        })
    else
        if IsLegacy then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        else
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        end
    end
end

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "Are we going to teach about the pussy hole?",
    Callback = function()
sendMessage("Аrеwеgоіngtоtеacһаbоuttһeрuѕѕуһolе?")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "cock and ball torture sex",
    Callback = function()
sendMessage("с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰kаndb󠀕󠀕󠀕alltor󠀕󠀕󠀕turеѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMessage("Е-Rаре")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "eat my shit nigger",
    Callback = function()
sendMessage("ea󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕tm󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕yѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕h󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕tn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ge󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r")
ResetFilter()
    end
})

 Tab:AddLabel("J")

  Tab:AddButton({
    Name = "*jizzles on your face*",
    Callback = function()
sendMessage("*јіzzӏеѕоnуоurface*")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lets go somewhere private so we can fuck",
    Callback = function()
sendMessage("ӏеtѕ gо ѕоmewһеrеprivаtеѕоwесаnfuсk")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lets record lesbian threesome",
    Callback = function()
sendMessage("lets record ӏеѕbіаn t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hrеeѕоm￰￰е")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oil up lil nigga",
    Callback = function()
sendMessage("oi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏu󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕pӏi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ln󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕i󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "im very horny and i will cum inside you hard",
    Callback = function()
sendMessage("imveryһ￰￰￰ο￰￰￰￰rn￰уandiwillс󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕mi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕nsidеyouhard")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I'm gonna fucking rape you",
    Callback = function()
sendMessage("Ӏ'mgо󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕nnаf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uсkіngr⁥⁥⁥а⁥⁥⁥p⁥⁥⁥ey⁥⁥⁥о⁥⁥⁥u ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm gonna fuck you hard",
    Callback = function()
sendMessage("i'mgоnnаf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uсkуоurһоӏеһаrd")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i fuck children",
    Callback = function()
sendMessage("if󠀖uс󠀖kc󠀖һiӏ󠀖dre󠀖n")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "murder the lgbtq+",
    Callback = function()
sendMessage("murdеrtһеӏgbtq+")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "shitass",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіtа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ")
ResetFilter()
    end
})


Tab:AddParagraph("Join our Discord and suggest YOUR bypass to get it added!","Go to the suggestions channel, and suggest a bypass!")

local Section = Tab:AddSection({
    Name = "Credits"
})

 Tab:AddLabel("[+] Jay. - Development and Bypassing.")
 Tab:AddLabel("[+] BANANAN. - Development.")
 Tab:AddLabel("[+] Dank6s - Script setup")
 Tab:AddLabel("[+] Anthony - Anti-Chat Logger")
 Tab:AddLabel("[+] clickgameplay - Automatic chat bypasser concept")
 Tab:AddLabel("[+] heartasians - Made ResetFilter bypass")
 Tab:AddLabel("[+] OG Vadrifts - Most bypass ideas")
 Tab:AddLabel("[+] Sauce_boss01 - Made some Bypasses")
 Tab:AddLabel("[+] d34dly - Made some Bypasses")
 Tab:AddLabel("[+] N4 - Made some Bypasses")
 Tab:AddLabel("[+] Tyler - Made some Bypasses")

local Section = Tab:AddSection({
    Name = "More Vadrifts Scripts"
})

  Tab:AddButton({
    Name = "Vadrifts Horrific Housing",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/HorrificHousing-v1.02"))()
    end
})

Tab:AddParagraph("Creating more soon..","Making scripts actually work..")

local enabled = false
local connection

local Tab = Window:MakeTab({
    Name = "Words",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Extra"
})


Tab:AddParagraph("Recommended Games"," Rate My Avatar                                                 Public Bathroom Simlator                                                               White room                                                        Natrual Disaster Survival                                                        Ragdoll Engine                                                 Spray Paint!")

  Tab:AddButton({
    Name = "Automatic Chat Bypasser (UI)",
    Callback = function()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 3
uiStroke.Color = Color3.fromRGB(128, 0, 128)
uiStroke.Parent = frame

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0.1, 0)
uiCorner.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.4, 0)
textBox.Position = UDim2.new(0.1, 0, 0.2, 0)
textBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
textBox.BorderSizePixel = 0
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 18
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.PlaceholderText = "Type your message here..."
textBox.PlaceholderColor3 = Color3.new(1, 1, 1)
textBox.Parent = frame

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0.1, 0)
textBoxCorner.Parent = textBox

local sendButton = Instance.new("TextButton")
sendButton.Size = UDim2.new(0.3, 0, 0.2, 0)
sendButton.Position = UDim2.new(0.35, 0, 0.7, 0)
sendButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
sendButton.BorderSizePixel = 0
sendButton.Font = Enum.Font.SourceSans
sendButton.TextSize = 14
sendButton.TextColor3 = Color3.new(1, 1, 1)
sendButton.Text = "Send"
sendButton.Parent = frame

local closeButton = Instance.new("ImageButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundTransparency = 1
closeButton.Image = "rbxassetid://3926305904"
closeButton.ImageRectOffset = Vector2.new(284, 4)
closeButton.ImageRectSize = Vector2.new(24, 24)
closeButton.Parent = frame

local custom_chars = {
    [" "] = "",
    ["stfu"] = "ѕ󠀕󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥f󠀖󠀕⁥⁥⁥u",
    ["asshole"] = "аssһоӏе",
    ["ass"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["arse"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е",
    ["anus"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ",
    ["Anus"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ",
    ["anal"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ",
    ["blowjob"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",
    ["boner"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r",
    ["boobies"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ",
    ["bullshit"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt",
    ["bastard"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd",
    ["beaner"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er",
    ["butthole"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе",
    ["bootyhole"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe",
    ["bondage"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оndаge",
    ["Bondage"] = "B⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥а⁥⁥⁥g⁥⁥⁥е⁥⁥⁥",
    ["butt"] = "butt",
    ["booty"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу",
    ["boobs"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s",
    ["boob"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b",
    ["breasts"] = "brеаѕtѕ",
    ["bbc"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с",
    ["bitch"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ",
    ["Bitch"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ",
    ["bitches"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ",
    ["Bitches"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ",
    ["cocaine"] = "сосаіnе",
    ["creampie"] = "сrеаmріе",
    ["cum"] = "с￰￰￰￰um",
    ["cunts"] = "с￰￰￰￰untѕ",
    ["cunt"] = "с￰￰￰￰unt",
    ["cock"] = "с￰￰￰￰осk",
    ["cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["cuckold"] = "￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold",
    ["condoms"] = "соndоmѕ",
    ["condom"] = "соnd￰￰￰￰оm",
    ["coochies"] = "соосһіеs",
    ["coochie"] = "соосһіе",
    ["crap"] = "сr⁥⁥⁥⁥ар",
    ["Crap"] = "сr⁥⁥⁥⁥ар",
    ["CRAP"] = "сr⁥⁥⁥⁥ар",
    ["cunny"] = "сunnу",
    ["Cunny"] = "сunnу",
    ["clit"] = "с￰￰￰￰ӏіt",
    ["Clit"] = "с￰￰￰￰ӏіt",
    ["dumbass"] = "d￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["dildo"] = "d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо",
    ["Dildo"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо",
    ["discord"] = "dіѕсоrd",
    ["dickhead"] = "d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad",
    ["dick"] = "⁥⁥⁥⁥⁥⁥d⁥⁥і⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖с⁥k",
    ["damn"] = "￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n",
    ["doggystyle"] = "d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе",
    ["Doggystyle"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе",
    ["fatass"] = "fat￰￰￰а￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕ",
    ["Fucked"] = "⁥⁥ꜰ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеd",
    ["fucked"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰с￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰k󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕е￰￰￰￰d",
    ["femboy"] = "fеmbоy",
    ["femboys"] = "fеmbоys",
    ["E-Rape"] = "Е-Rаре",
    ["E-rape"] = "Е-rаре",
    ["e-eаре"] = "Е-rаре",
    ["E-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["E-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["fuckers"] = "⁥⁥f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеrѕ",
    ["Fuckers"] = "ꜰu󠀖󠀖с󠀖kе󠀖r󠀖ѕ",
    ["fucker"] = "⁥⁥ꜰ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеr",
    ["Fucker"] = "ꜰuс󠀖kе󠀖r",
    ["faggot"] = "⁥⁥⁥⁥f⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g⁥⁥о󠀕󠀕⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥t⁥⁥",
    ["Faggot"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰g￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰g󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕о￰￰￰￰t",
    ["fatass"] = "f￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Fatass"] = "F￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Fag"] = "⁥⁥⁥⁥⁥⁥F⁥⁥а⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖g⁥⁥⁥⁥",
    ["fag"] = "⁥⁥⁥⁥⁥⁥f⁥⁥а⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖g⁥⁥⁥⁥",
    ["fap"] = "f⁥󠀕⁥⁥а⁥󠀕⁥⁥р",
    ["fanny"] = "fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу",
    ["horny"] = "һ￰￰￰ο￰￰￰￰rn￰у",
    ["hitler"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr",
    ["hentai"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі",
    ["hoes"] = "һоеѕ",
    ["hoe"] = "һ⁥⁥⁥⁥󠀕󠀕󠀕⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥е",
    ["instagram"] = "іnѕtаgrаm",
    ["insta"] = "іnѕta",
    ["Instagram"] = "іnѕtаgrаm",
    ["Insta"] = "іnѕta",
    ["kys"] = "k󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰y󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["lmfao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕m￰￰f￰￰ао",
    ["lmao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао",
    ["Lmao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао",
    ["motherfucker"] = "mоtһеrfuсkеr",
    ["masturbate"] = "m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e",
    ["Masturbate"] = "М⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е",
    ["masturbating"] = "m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g",
    ["meth"] = "m￰￰￰еtһ",
    ["Meth"] = "M￰￰￰еtһ",
    ["milf"] = "mіlf",
    ["Milf"] = "Mіlf",
    ["molest"] = "m￰￰￰оӏеѕt",
    ["Molest"] = "M￰￰￰оӏеѕt",
    ["Niggas"] = "Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ",
    ["niggas"] = "n￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ",
    ["nigga"] = "n￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gа",
    ["nazi"] = "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥",
    ["Nazi"] = "⁥⁥⁥⁥⁥N⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥",
    ["naked"] = "nаkеd",
    ["nudes"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Nudes"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Niggas"] = "Ν󠀕󠀕󠀕󠀕󠀕⁥і󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕аs",
    ["nude"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е",
    ["Nude"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е",
    ["negro"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
    ["Negro"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
    ["nipples"] = "nіррӏеѕ",
    ["nipple"] = "nіррӏе",
    ["Nipples"] = "Nіррӏеѕ",
    ["Nipple"] = "Nіррӏе",
    ["nazi"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і",
    ["Nazi"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і",
    ["orgasm"] = "orgаѕm",
    ["onlyfans"] = "оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ",
    ["Onlyfans"] = "оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ",
    ["onlyfans.com"] = "o󠀖n󠀖ӏyf󠀖an󠀖󠀖󠀖ѕ.󠀖󠀖󠀖со󠀖󠀖󠀖󠀖m",
    ["omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["pedophile"] = "реdорһіӏе",
    ["pornhub"] = "⁥⁥р󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕b",
    ["penis"] = "р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",
    ["porn"] = "р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n",
    ["pussies"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ",
    ["pussy"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у",
    ["piss"] = "рі󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕ss",
    ["queer"] = "quееr",
    ["Queer"] = "Quееr",
    ["rape"] = "r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре",
    ["retarded"] = "￰￰r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd",
    ["Retarded"] = "￰￰R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd",
    ["retard"] = "⁥⁥r⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d",
    ["Retard"] = "⁥⁥R⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d",
    ["rizz"] = "rіzz",
    ["Rapist"] = "R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst",
    ["rapist"] = "r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst",
    ["Rizz"] = "Rіzz",
    ["stripper"] = "ѕtrірреr",
    ["slave"] = "ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е",
    ["seduce"] = "ѕеduсе",
    ["slut"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut",
    ["shit"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt",
    ["sexy"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху",
    ["sex"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх",
    ["sperm"] = "ѕреrm",
    ["Sperm"] = "ѕреrm",
    ["Semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["schlong"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng",
    ["titties"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ",
    ["thots"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ",
    ["thot"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt",
    ["tits"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ",
    ["tit"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt",
    ["tranny"] = "tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у",
    ["Tranny"] = "Tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у",
    ["virginity"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу",
    ["virgins"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nѕ",
    ["vagina"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа",
    ["virgin"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰n",
    ["whore"] = "w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hоrе",
    ["weed"] = "￰￰w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d",
    ["Weed"] = "￰￰W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d",
    ["xxx"] = "ххх",
    ["Xxx"] = "Xхх",
    ["ASS"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ",
    ["ANUS"] = "АΝUЅ",
    ["ARSE"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰R󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ￰￰￰￰￰￰￰￰󠀕󠀕Е",
    ["ASSHOLE"] = "АЅЅНОLЕ",
    ["ANAL"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰N󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕А￰￰￰￰￰￰￰￰󠀕󠀕L",
    ["BASTARD"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АЅTАRD",
    ["BONER"] = "В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝЕR",
    ["BONDAGE"] = "В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝDAGE",
    ["BONDAGE"] = "В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В",
    ["BITCHES"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСНЕЅ",
    ["BLOWJOB"] = "В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В",
    ["BITCH"] = "В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН",
    ["BOOBS"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOBЅ",
    ["BOOB"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOB",
    ["BUTTHOLE"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTTНОLЕ",
    ["BUTT"] = "BUTT",
    ["BOOTY"] = "ВООТΥ",
    ["BULLSHIT"] = "В󠀖󠀖⁥⁥⁥⁥UL󠀖󠀖⁥⁥⁥⁥LЅН󠀖󠀖⁥⁥⁥⁥ӀТ",
    ["BEANER"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕANЕR",
    ["CUNTS"] = "С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNTS",
    ["COCAINE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["COOCHIES"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕS",
    ["COOCHIE"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["CUNT"] = "С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT",
    ["CUCKOLD"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥KOLD",
    ["CUCK"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥K",
    ["CREAMPIE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥PIE",
    ["CUM"] = "СUМ",
    ["COCK"] = "СОСK",
    ["DISCORD"] = "DӀЅСОRD",
    ["DILDO"] = "D⁥󠀕󠀕󠀕󠀕⁥⁥Ӏ⁥󠀕󠀕󠀕󠀕⁥⁥L⁥󠀕󠀕󠀕󠀕⁥⁥DО",
    ["DUMBASS"] = "D󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕UM⁥⁥⁥⁥⁥⁥⁥⁥⁥BАЅЅ",
    ["DAMN"] = "DАМΝ",
    ["DICKHEAD"] = "D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚНЕ󠀕⁥⁥󠀕AD",
    ["DICK"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚ",
    ["FAGGOT"] = "F󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘A󠀕󠀖󠀗󠀘󠀕󠀖󠀕ԍ󠀖󠀗󠀘󠀖󠀗󠀘󠀘󠀘ԍ󠀖󠀗󠀘󠀖󠀗󠀘О󠀖󠀗󠀘󠀘󠀘󠀖󠀗T",
    ["FATASS"] = "F￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АTА￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ",
    ["FEMBOYS"] = "FЕМВОΥЅ",
    ["FEMBOY"] = "FЕМВОΥ",
    ["FUCKERS"] = "FᴜСΚERS",
    ["FUCKER"] = "FᴜСΚER",
    ["FUCKED"] = "FᴜСΚED",
    ["HITLER"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ІТL￰￰￰￰Е￰R",
    ["HENTAI"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ",
    ["HORNY"] = "НОRNY",
    ["HOES"] = "НОЕЅ",
    ["HOE"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОЕ",
    ["KYS"] = "ΚΥЅ",
    ["LMFAO"] = "LМFАО",
    ["LMAO"] = "LМАО",
    ["MASTURBATE"] = "МАЅТURВАТΕ",
    ["MASTURBATE"] = "МО󠀕󠀕󠀕󠀖󠀖ТНЕ󠀕󠀕󠀕󠀖󠀖R󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UC⁥⁥⁥ΚЕ⁥⁥⁥R",
    ["NUDES"] = "ΝUDЕЅ",
    ["NUDE"] = "Ν󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕Е",
    ["NEGRO"] = "Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕGRО",
    ["NIPPLES"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥Ѕ",
    ["NIPPLE"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥",
    ["NAKED"] = "ΝΑKΕD",
    ["NAKED"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ",
    ["OMFG"] = "ОM⁥⁥⁥⁥⁥⁥⁥⁥FG",
    ["ORGASM"] = "О￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕RGASM",
    ["PENIS"] = "Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕΝӀЅ",
    ["PUSSIES"] = "Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅӀЕ￰￰S",
    ["PUSSY"] = "Р󠀕󠀕󠀕󠀖⁥⁥⁥⁥⁥󠀖󠀗󠀕U⁥⁥⁥⁥⁥Ѕ󠀕󠀕󠀕󠀖⁥⁥⁥⁥⁥󠀖󠀗󠀕S󠀕⁥⁥⁥⁥⁥󠀕󠀖󠀖󠀗󠀕Υ",
    ["PISS"] = "РӀ󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕SS",
    ["PORN"] = "РО󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕RΝ",
    ["PORNHUB"] = "⁥⁥Р⁥⁥⁥󠀕⁥⁥󠀕О⁥⁥R⁥⁥⁥⁥⁥󠀕⁥⁥󠀕N⁥⁥⁥󠀕󠀕Н⁥⁥⁥⁥⁥󠀕󠀕UВ",
    ["RETARD"] = "󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕R󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰󠀕⁥Е￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕⁥Т󠀕￰󠀕󠀕󠀕￰￰￰￰￰￰￰￰󠀕󠀕￰￰󠀕⁥A￰￰￰￰￰󠀕￰￰￰￰￰￰￰￰󠀕￰￰￰￰￰￰￰￰￰R󠀕󠀕D",
    ["RAPE"] = "RАРЕ",
    ["SHIT"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕НӀT",
    ["SEX"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХ",
    ["SEX"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХY",
    ["STFU"] = "ЅТFU",
    ["SLUT"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕LUT",
    ["SLAVE"] = "ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE",
    ["TITTIES"] = "TӀTTӀEЅ",
    ["TITS"] = "ТIТЅ",
    ["TIT"] = "TӀT",
    ["THOT"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОT",
    ["THOTS"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОTS",
    ["VIRGINITY"] = "V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY",
    ["VIRGINS"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀNS",
    ["VIRGIN"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀN",
    ["VAGINA"] = "V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А",
    ["XXX"] = "Х￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ХХ",
    ["WHORE"] = "W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОRЕ",
    ["WEED"] = "￰￰W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е￰￰E￰󠀕󠀕￰￰D",
    ["blacked.com"] = "blacked.c⁥⁥⁥о⁥⁥⁥m", --Nsfw websites
    ["pornhub.com"] = "р⁥⁥⁥о⁥⁥⁥r⁥⁥⁥n⁥⁥⁥һ⁥⁥⁥u⁥⁥⁥b.c⁥⁥⁥о⁥⁥⁥m",
    ["XVIDEOS.COM"] = "Х󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕VӀ⁥⁥⁥⁥⁥⁥D⁥⁥⁥󠀕󠀕󠀕Е⁥⁥⁥󠀕󠀕󠀕ОЅ.С⁥⁥⁥󠀕󠀕󠀕ОМ",
    ["https://blacked.com"] = "httрs:/⁥⁥⁥/blacked.c⁥⁥⁥о⁥⁥⁥m",
    ["https://onlyfans.com"] = "ht⁥t⁥⁥рѕ⁥⁥:/⁥⁥/оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ.сom",
    ["PORNHUB.COM"] = "Р⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Ν⁥⁥⁥Н⁥⁥⁥U⁥⁥⁥В.С⁥⁥⁥О⁥⁥⁥М⁥⁥⁥",
    ["Asshole"] = "аssһоӏе", --Capitals at the first letter
    ["Ass"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Arse"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е",
    ["Anal"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ",
    ["Blowjob"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",
    ["Boner"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r",
    ["Boobies"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ",
    ["Bullshit"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt",
    ["Bastard"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd",
    ["Beaner"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er",
    ["Butthole"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе",
    ["Bootyhole"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe",
    ["Butt"] = "bu⁥⁥⁥⁥⁥⁥⁥⁥tt",
    ["Booty"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу",
    ["Boobs"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s",
    ["Boob"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b",
    ["Breats"] = "Brеаѕtѕ",
    ["Bbc"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с",
    ["Cocaine"] = "сосаіnе",
    ["Creampie"] = "сrеаmріе",
    ["Cum"] = "с￰￰￰￰um",
    ["Cunts"] = "с￰￰￰￰untѕ",
    ["Cunt"] = "с￰￰￰￰unt",
    ["Cock"] = "с￰￰￰￰осk",
    ["Cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["Cuckold"] = "￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold",
    ["Condoms"] = "соndоmѕ",
    ["Condom"] = "соnd￰￰￰￰оm",
    ["Coochies"] = "соосһіеs",
    ["Coochie"] = "соосһіе",
    ["Dumbass"] = "D￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Discord"] = "￰￰ᴅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰ѕ￰￰￰с￰￰￰￰￰￰о￰󠀕󠀕󠀕￰￰￰r￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰d",
    ["Dickhead"] = "D￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad",
    ["Dick"] = "ᴅ ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰￰с￰￰￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰k",
    ["Damn"] = "￰￰D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n",
    ["E-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["E-Rape"] = "Е-Rаре",
    ["E-rape"] = "Е-rаре",
    ["e-rape"] = "Е-rаре",
    ["Fatass"] = "F￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Femboy"] = "Fеmbоy",
    ["Femboys"] = "Fеmbоys",
    ["Horny"] = "һ￰￰￰ο￰￰￰￰rn￰у",
    ["Hitler"] = "Нi󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥tl⁥⁥⁥⁥󠀗󠀕󠀕󠀕󠀕󠀕󠀖е󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖r",
    ["Hentai"] = "H󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕i", 
    ["hentai"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі", 
    ["Hoes"] = "һоеѕ",
    ["Hoe"] = "һ⁥⁥⁥⁥󠀕󠀕󠀕⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥е",
    ["Kys"] = "K⁥⁥⁥⁥⁥⁥⁥⁥y⁥⁥⁥ѕ",
    ["Lmfao"] = "Lm⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥о",
    ["Motherfucker"] = "Mot￰￰￰￰￰￰￰h￰e￰rf￰￰￰￰￰u￰с￰￰￰￰￰￰￰￰k￰e￰￰￰￰￰￰￰￰r",
    ["Masturbating"] = "m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g",
    ["Meth"] = "M￰￰￰еtһ",
    ["Naked"] = "Nаkеd",
    ["Nudes"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Orgasm"] = "orgаѕm",
    ["Omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["Pedophile"] = "реdорһіӏе",
    ["Pornhub"] = "Р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һub",
    ["Penis"] = "р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",
    ["Porn"] = "р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n",
    ["Pussies"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ",
    ["Pussy"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у",
    ["Rape"] = "R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре",
    ["Stripper"] = "Strірреr",
    ["Slave"] = "ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е",
    ["Seduce"] = "ѕеduсе",
    ["Slut"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut",
    ["Shit"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt",
    ["Sexy"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху",
    ["Sex"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх",
    ["Titties"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ",
    ["Thots"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ",
    ["Thot"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt",
    ["Tits"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ",
    ["Tit"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt",
    ["Virginity"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу",
    ["Virgin"] = "V￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰s",
    ["Vagina"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа",
    ["fuck you"] = "f󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖uc󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖ky󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖o󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖u",
    ["what the fuck"] = "wha⁥⁥⁥⁥⁥⁥tt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uс⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥k",
    ["shut the fuck up"] = "sһ⁥⁥⁥⁥⁥⁥utt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥ku⁥⁥⁥⁥⁥⁥⁥⁥⁥p",
    ["go fuck yourself"] = "gof⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥kу⁥⁥⁥⁥⁥о⁥⁥urself",
    ["fuck"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсk", --Sometimes worksb
    ["fucking"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсking",
    ["Fuck"] = "F⁥⁥⁥⁥⁥⁥⁥⁥uсk",
    ["FUCKING"] = " F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚӀ󠀕󠀕󠀕󠀖󠀕N⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕G ", 
    ["FUCKERS"] = "󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UС⁥⁥⁥ΚЕ⁥⁥⁥R󠀕󠀕󠀕󠀕S",
    ["FUCKER"] = "󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UC⁥⁥⁥ΚЕ⁥⁥⁥R",
    ["FUCKED"] = "F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UС⁥⁥⁥ΚЕ⁥⁥⁥D",
    ["FUCK"] = "FᴜСΚ", --always works
    ["FUCKS"] = "F⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥C󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥ΚS", 
    ["bites your cock"] = "bіtеѕуоurсосk", --Sentences that dont work normally
    ["big black cock"] = "big black сосk",
    ["masturbates"] = "ma⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥st⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥ur󠀕󠀕b󠀕󠀕a󠀕󠀕t󠀕󠀕e󠀕󠀕s",
    ["suck my cock retard"] = "ѕuсk my сосk ret⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥аrd",
    ["i pull all the bitches"] = "i pull all the bitсһеs",
    ["small penis"] = "small рen⁥⁥⁥⁥⁥⁥⁥⁥iѕ",
    ["nigger"] = "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеr",
    ["NIGGER"] = "NӀԍԍЕR",
    ["NIGGA"] = "N󠀕󠀕󠀕󠀕󠀕󠀕Ӏԍ󠀕󠀕󠀕󠀕󠀕󠀕ԍА",
    ["niggers"] = "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеrѕ",
    ["suck my cock"] = "ѕ⁥⁥⁥u⁥⁥⁥с⁥⁥⁥kmyсо⁥⁥⁥сk",
    ["lets have sex"] = "⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ ⁥⁥⁥һ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥",
    ["I HAVE A MASSIVE COCK"] = "I HAVE A MASSIVE СОСK",
    ["SHUT THE FUCK UP"] = "SHUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР",
    ["I AM ABOUT TO CUM"] = "IАМ АВOU￰￰￰TTOС￰￰￰U￰￰￰М",
    ["wife"] = "wіfе", --Extra
    ["suck"] = "ѕuсk",
    ["love"] = "ӏ⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥vе",
    ["pregnant"] = "рrеgnаnt",
    ["mommy"] = "mоmmу",
    ["daddy"] = "d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у",
    ["WIFE"] = "WIFΕ",
    ["SUCK"] = "SUСK",
    ["kill"] = "k󠀕󠀕󠀕і󠀕󠀕󠀕l󠀕󠀕󠀕ӏ",
    ["yourself"] = "уо󠀕󠀕⁥⁥⁥⁥ur󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕⁥⁥⁥⁥еlf",
    ["pedo"] = "p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥о"
}

local function sendMessage()
    local message = textBox.Text
    for short, full in pairs(custom_chars) do
        message = string.gsub(message, short, full)
    end
    if message ~= "" then
        if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
            local success, err = pcall(function()
                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
            end)
            if not success then
                print("Error sending message (Legacy Chat):", err)
            end
        else
            local textChannel = TextChatService.TextChannels:FindFirstChild("RBXGeneral") or TextChatService.TextChannels:FindFirstChild("RBXSystem")
            if textChannel then
                local success, err = pcall(function()
                    textChannel:SendAsync(message)
                end)
                if not success then
                    print("Error sending message (TCS):", err)
                end
            else
                print("RBXGeneral or RBXSystem channel not found in TCS.")
            end
        end
        textBox.Text = ""
    end
end

sendButton.MouseButton1Click:Connect(sendMessage)

textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        sendMessage()
    end
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

    end
})

  Tab:AddButton({
    Name = "Stop Tags",
    Callback = function()
wait()
game.StarterGui:SetCore("SendNotification", {Title="Info"; Text="The button prevents tagging; once clicked, it stops tagging the bypasses for a bit."; Duration=5;})
wait()
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abcdeABCDE12345~`|•√?xđ", "All")
wait()
ResetFilter()
    end
})

--[[

░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░░██████╗
░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗██╔════╝
░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║╚█████╗░
░░████╔═████║░██║░░██║██╔══██╗██║░░██║░╚═══██╗
░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝██████╔╝
░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░╚═════╝░
--]]

local Section = Tab:AddSection({
    Name = "lowercase A-Z"
})

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "asshole",
    Callback = function()
sendMessage("аssһоӏе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ass",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anus",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "arse ",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anal",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "boner",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bitches",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bitch",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobies",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bullshit",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bastard ",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "beaner",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bondage",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оndаge")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butthole",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bootyhole",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butt",
    Callback = function()
sendMessage("butt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "booty",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobs",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boob",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "breasts",
    Callback = function()
sendMessage("brеаѕtѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bbc",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "cocaine",
    Callback = function()
sendMessage("сосаіnе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "creampie",
    Callback = function()
sendMessage("сrеаmріе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cumming",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("с￰￰￰￰um￰￰￰￰mіn￰￰￰￰g", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cum",
    Callback = function()
sendMessage("с￰￰￰￰um")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunts",
    Callback = function()
sendMessage("с￰￰￰￰untѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunt",
    Callback = function()
sendMessage("с￰￰￰￰unt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock",
    Callback = function()
sendMessage("с￰￰￰￰осk")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "clit",
    Callback = function()
sendMessage("с￰￰￰￰ӏіt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cuckold",
    Callback = function()
sendMessage("￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "condoms",
    Callback = function()
sendMessage("соndоmѕ")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "condom",
    Callback = function()
sendMessage("соnd￰￰￰￰оm")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "coochies",
    Callback = function()
sendMessage("соосһіеs")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "coochie",
    Callback = function()
sendMessage("соосһіе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunny",
    Callback = function()
sendMessage("сunnу", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "dumbass",
    Callback = function()
sendMessage("d￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dickhead",
    Callback = function()
sendMessage("d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Discord",
    Callback = function()
sendMessage("￰￰ᴅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰ѕ￰￰￰с￰￰￰￰￰￰о￰󠀕󠀕󠀕￰￰￰r￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "doggystyle",
    Callback = function()
sendMessage("d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dildo",
    Callback = function()
sendMessage("d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Dick",
    Callback = function()
sendMessage("ᴅ ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰￰с￰￰￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "damn",
    Callback = function()
sendMessage("￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMessage("Е-Rаре", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "E-Sex",
    Callback = function()
sendMessage("Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fatass",
    Callback = function()
sendMessage("f￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fucked",
    Callback = function()
sendMessage("￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰с￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰k󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕е￰￰￰￰d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fuckers",
    Callback = function()
sendMessage("ꜰu󠀖󠀖с󠀖kе󠀖r󠀖ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fucker",
    Callback = function()
sendMessage("ꜰuс󠀖kе󠀖r", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Faggot",
    Callback = function()
sendMessage("￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰g￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰g󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕о￰￰￰￰t", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fap",
    Callback = function()
sendMessage("f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰а󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕р", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "femboys",
    Callback = function()
sendMessage("fеmbоys", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "femboy",
    Callback = function()
sendMessage("fеmbоy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fanny",
    Callback = function()
sendMessage("fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "horny",
    Callback = function()
sendMessage("һ￰￰￰ο￰￰￰￰rn￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hitler",
    Callback = function()
sendMessage("һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hentai",
    Callback = function()
sendMessage("һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hoes",
    Callback = function()
sendMessage("һоеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hoe",
    Callback = function()
sendMessage("һ󠀕󠀕󠀕ое", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "instagram",
    Callback = function()
sendMessage("іnѕtаgrаm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "insta",
    Callback = function()
sendMessage("іnѕta", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "kys",
    Callback = function()
sendMessage("k󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰y󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lmfao",
    Callback = function()
sendMessage("ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕m￰￰f￰￰ао", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lmao",
    Callback = function()
sendMessage("ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "motherfucker",
    Callback = function()
sendMessage("mоtһеrfuсkеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "masturbate",
    Callback = function()
sendMessage("m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "masturbating",
    Callback = function()
sendMessage("m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "molest",
    Callback = function()
sendMessage("m￰￰￰оӏеѕt", "All")
ResetFilter()
    end
})
 
  Tab:AddButton({
    Name = "milf",
    Callback = function()
sendMessage("mіlf", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "meth",
    Callback = function()
sendMessage("m￰￰￰еtһ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "Niggas",
    Callback = function()
sendMessage("Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "naked",
    Callback = function()
sendMessage("nаkеd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "negro",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nipples",
    Callback = function()
sendMessage("nіррӏеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nipple",
    Callback = function()
sendMessage("nіррӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nudes",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nude",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nazi",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "onlyfans",
    Callback = function()
sendMessage("оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "orgasm",
    Callback = function()
sendMessage("orgаѕm", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pedophile",
    Callback = function()
sendMessage("реdорһіӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Pornhub",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һub", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
sendMessage("р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "porn",
    Callback = function()
sendMessage("р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "pussies",
    Callback = function()
sendMessage("р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "pussy",
    Callback = function()
sendMessage("р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Q")

  Tab:AddButton({
    Name = "queer",
    Callback = function()
sendMessage("quееr", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "retarded",
    Callback = function()
sendMessage("￰￰r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "rapist",
    Callback = function()
sendMessage("r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "rape",
    Callback = function()
sendMessage("r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "schlong",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "stripper",
    Callback = function()
sendMessage("ѕtrірреr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "slave",
    Callback = function()
sendMessage("ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sperm",
    Callback = function()
sendMessage("ѕреrm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "seduce",
    Callback = function()
sendMessage("ѕеduсе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "slut",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shit",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sexy",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sex",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "titties",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "thots",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "thot",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tranny",
    Callback = function()
sendMessage("tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tits",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tit",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt", "All")
ResetFilter()
    end
})

 Tab:AddLabel("V")

  Tab:AddButton({
    Name = "virginity",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "virgins",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "virgin",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰n", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "vagina",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "whore",
    Callback = function()
sendMessage("w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hоrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "weed",
    Callback = function()
sendMessage("￰￰w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "xxx",
    Callback = function()
sendMessage("ххх", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "ASS",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ASSHOLE",
    Callback = function()
sendMessage("АЅЅНОLЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ANUS",
    Callback = function()
sendMessage("АΝUЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ARSE",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰R󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ￰￰￰￰￰￰￰￰󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ANAL",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰N󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕А￰￰￰￰￰￰￰￰󠀕󠀕L", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "BASTARD",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АЅTАRD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BONDAGE",
    Callback = function()
sendMessage("В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝDAGE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BONER",
    Callback = function()
sendMessage("В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BITCHES",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСНЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BITCH",
    Callback = function()
sendMessage("В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BLOWJOB",
    Callback = function()
sendMessage("В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BULLSHIT",
    Callback = function()
sendMessage("В󠀖󠀖UL󠀖󠀖LЅН󠀖󠀖ӀТ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOBS",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOBЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOB",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOB", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BUTTHOLE",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTTНОLЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BUTT",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOTY",
    Callback = function()
sendMessage("ВООТΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BEANER",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕANЕR", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "COCAINE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUNTS",
    Callback = function()
sendMessage("С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNTS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUNT",
    Callback = function()
sendMessage("С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT", "All")
ResetFilter()
    end
}) 

  Tab:AddButton({
    Name = "COOCHIES",
    Callback = function()
sendMessage("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COOCHIE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM",
    Callback = function()
sendMessage("СUМ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CREAMPIE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕PIE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COCK",
    Callback = function()
sendMessage("СОСK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUCKOLD",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ΚOLD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUCK",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ᴜ󠀕󠀕󠀕󠀕󠀕󠀕󠀕С󠀕󠀕󠀕󠀕󠀕󠀕󠀕K", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "DISCORD",
    Callback = function()
sendMessage("DӀЅСОRD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DUMBASS",
    Callback = function()
sendMessage("DUMBАЅЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DILDO",
    Callback = function()
sendMessage("D󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕L󠀕󠀕󠀕󠀕DО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DICKHEAD",
    Callback = function()
sendMessage("D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚНЕ󠀕󠀕AD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DICK",
    Callback = function()
sendMessage("D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DAMN",
    Callback = function()
sendMessage("DАМΝ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "FAGGOT",
    Callback = function()
sendMessage("F󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘A󠀕󠀖󠀗󠀘󠀕󠀖󠀕ԍ󠀖󠀗󠀘󠀖󠀗󠀘󠀘󠀘ԍ󠀖󠀗󠀘󠀖󠀗󠀘О󠀖󠀗󠀘󠀘󠀘󠀖󠀗T", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FATASS",
    Callback = function()
sendMessage("F￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АTА￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})
  Tab:AddButton({
    Name = "FEMBOYS",
    Callback = function()
sendMessage("FЕМВОΥЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FEMBOY",
    Callback = function()
sendMessage("FЕМВОΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKERS",
    Callback = function()
sendMessage("FᴜСΚERS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKER",
    Callback = function()
sendMessage("FᴜСΚER", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKED",
    Callback = function()
sendMessage("FᴜСΚED", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCK",
    Callback = function()
sendMessage("FᴜСΚ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "HITLER",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ІТL￰￰￰￰Е￰R", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HENTAI",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HORNY",
    Callback = function()
sendMessage("НОRNY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HOES",
    Callback = function()
sendMessage("НОЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HOE",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "KYS",
    Callback = function()
sendMessage("ΚΥЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "LMFAO",
    Callback = function()
sendMessage("LМFАО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LMAO",
    Callback = function()
sendMessage("LМАО", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MOTHERFUCKER",
    Callback = function()
sendMessage("МО󠀕󠀕󠀕󠀖󠀖ТНЕ󠀕󠀕󠀕󠀖󠀖R󠀕󠀕F󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖ᴜCΚЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "MASTURBATE",
    Callback = function()
sendMessage("МАЅТURВАТΕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "METH",
    Callback = function()
sendMessage("M￰￰￰ЕТН", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "NIGGER",
    Callback = function()
sendMessage("NӀԍԍЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIGGA",
    Callback = function()
sendMessage("N󠀕󠀕󠀕󠀕󠀕󠀕Ӏԍ󠀕󠀕󠀕󠀕󠀕󠀕ԍА", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NEGRO",
    Callback = function()
sendMessage("Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕGRО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAKED",
    Callback = function()
sendMessage("ΝΑKΕD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NUDES",
    Callback = function()
sendMessage("ΝUDЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NUDE",
    Callback = function()
sendMessage("Ν󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAZI",
    Callback = function()
sendMessage("N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIPPLES",
    Callback = function()
sendMessage("Ν󠀕󠀕Ӏ󠀕󠀕󠀕PP󠀕󠀖󠀕L󠀕󠀕󠀕󠀕󠀕󠀖󠀕Е󠀖Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIPPLE",
    Callback = function()
sendMessage("Ν󠀕󠀕Ӏ󠀕󠀕󠀕PP󠀕󠀖󠀕L󠀕󠀕󠀕󠀕󠀕󠀖󠀕Е󠀖", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "ORGASM",
    Callback = function()
sendMessage("О￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕RGASM", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "PENIS",
    Callback = function()
sendMessage("Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕΝӀЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PUSSIES",
    Callback = function()
sendMessage("Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅӀЕ￰￰S", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PUSSY",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕󠀖󠀖󠀗󠀕UЅ󠀕󠀕󠀕󠀖󠀖󠀗󠀕S󠀕󠀕󠀖󠀖󠀗󠀕Υ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PORNHUB",
    Callback = function()
sendMessage("Р󠀕󠀕ОR󠀕󠀕N󠀕󠀕Н󠀕󠀕UВ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PORN",
    Callback = function()
sendMessage("РО󠀕󠀕󠀕󠀕󠀕RΝ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PISS",
    Callback = function()
sendMessage("РӀЅЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "RETARD",
    Callback = function()
sendMessage("󠀕󠀕󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕Т󠀕󠀕󠀕󠀕󠀕󠀕󠀕A󠀕󠀕R󠀕󠀕D", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "RAPE",
    Callback = function()
sendMessage("RАРЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "STFU",
    Callback = function()
sendMessage("ЅТFU", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHIT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕НӀT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SLUT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕LUT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SLAVE",
    Callback = function()
sendMessage("ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SEXY",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SEX",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "TITTIES",
    Callback = function()
sendMessage("TӀTTӀEЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "TITS",
    Callback = function()
sendMessage("ТIТЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "TIT",
    Callback = function()
sendMessage("TӀT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "THOTS",
    Callback = function()
sendMessage("T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОTS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "THOT",
    Callback = function()
sendMessage("T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОT", "All")
ResetFilter()
    end
})

 Tab:AddLabel("V")

  Tab:AddButton({
    Name = "VIRGINITY",
    Callback = function()
sendMessage("V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VIRGINS",
    Callback = function()
sendMessage("V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀNS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VIRGIN",
    Callback = function()
sendMessage("V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀN", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VAGINA",
    Callback = function()
sendMessage("V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А", "All")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "WHORE",
    Callback = function()
sendMessage("W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОRЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "XXX",
    Callback = function()
sendMessage("Х￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ХХ", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "Sentences",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Extra"
})
Tab:AddParagraph("SEX BOT (Beta)","Fuck a player!")

local UsernameTextBox = Tab:AddTextbox({
    Name = "Username/Display Name:",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        local selectedAnimation = tonumber(DropdownValue)

        if selectedAnimation == 1 then
            bangAnimation(Value)
        elseif selectedAnimation == 2 then
            bangAnimation2(Value)
        else
            Orion:MakeNotification({
                Name = "Error",
                Content = "You must select an animation type before entering a username.",
                Time = 5
            })
        end
    end
})

local Dropdown = Tab:AddDropdown({
    Name = "Animation Type",
    Default = "Select Animation",
    Options = {"1", "2"},
    Callback = function(Value)
        DropdownValue = Value
    end
})

local function findPlayer(name)
    local lowerName = string.lower(name)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(player.Name), lowerName) or string.find(string.lower(player.DisplayName), lowerName) then
            return player
        end
    end
    return nil
end

local animationTrack = nil
local animationConnection = nil
local followConnection = nil
local animationTrack2 = nil
local animationConnection2 = nil
local floatConnection = nil
local bangDied = nil
local bang = nil
local bangAnim = nil
local bangLoop = nil

function bangAnimation(playerName)
    local player = findPlayer(playerName)
    if player then

        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        local localHumanoid = localCharacter:FindFirstChildOfClass("Humanoid")

        if localHumanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = localHumanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://5918726674" or "rbxassetid://148840371"
            animationTrack = localHumanoid:LoadAnimation(animation)
            animationTrack:Play()
            animationTrack:AdjustSpeed(10)

            animationConnection = localHumanoid.Died:Connect(stopAnimations)

            followConnection = game:GetService("RunService").Stepped:Connect(function()
                if localCharacter and player.Character then
                    local offset = CFrame.new(0, 0, 0.5)
                    local targetCFrame = player.Character.HumanoidRootPart.CFrame
                    local localCFrame = targetCFrame * offset
                    localCharacter.HumanoidRootPart.CFrame = localCFrame
                end
            end)

          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("С￰￰￰￰￰￰￰М￰￰￰￰￰￰￰ОΝВ￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СНЅUСΚТНАТCО￰￰￰￰￰￰￰СΚ", "All")
           wait(1)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ВЕАGООDН󠀖󠀗󠀘￰￰￰￰О￰￰￰￰ЕFОRРА￰￰￰￰РӀ..YЕ￰￰￰￰АН..ТНАТЅӀТ..", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLYЅН󠀘󠀖󠀗󠀘￰￰￰￰￰ӀТIА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLΥ ЅНӀТТТТ", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ӀАMАBOUTTOBUZZMΥFАTАЅЅСОСK", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*￰￰￰с￰￰￰￰um￰￰￰￰ѕ￰￰￰￰а￰￰￰￰ӏ￰￰￰￰оt￰￰￰*", "All")
          ResetFilter()

            wait(1)
            stopAnimation(animationTrack, animationConnection, followConnection)
        end
    else
        Orion:MakeNotification({
            Name = "Error",
            Content = "Player not found.",
            Time = 5
        })
    end
end

function bangAnimation2(playerName)
    local player = findPlayer(playerName)
    if player then

        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        local localHumanoid = localCharacter:FindFirstChildOfClass("Humanoid")
        if localHumanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = localHumanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://5918726674" or "rbxassetid://148840371"
            animationTrack2 = localHumanoid:LoadAnimation(animation)
            animationTrack2:Play()
            animationTrack2:AdjustSpeed(10)

            animationConnection2 = animationTrack2.KeyframeReached:Connect(function(keyframeName)
                if keyframeName == "End" then
                    local targetHead = player.Character:FindFirstChild("Head")
                    if targetHead then
                        local torsoOffset = localCharacter:FindFirstChild("Torso") or localCharacter:FindFirstChild("UpperTorso")
                        if torsoOffset then
                            local offset = CFrame.new(0, targetHead.Size.Y - torsoOffset.Size.Y + 1, -1) * CFrame.Angles(0, math.pi, 0)
                            localCharacter.HumanoidRootPart.CFrame = targetHead.CFrame * offset
                        end
                    end
                end
            end)

            animationConnection2 = localHumanoid.Died:Connect(stopAnimations)

            floatConnection = game:GetService("RunService").Stepped:Connect(function()
                localCharacter.HumanoidRootPart.Anchored = true
                localCharacter.HumanoidRootPart.CanCollide = false
            end)

          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ЕАТТНАТРUЅЅΥB￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСН", "All")
          ResetFilter()
           wait(1)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("MMHMYEAH..", "All")
          ResetFilter()
           wait()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("DADDY", "All")
          ResetFilter()
           wait(3)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLYЅН󠀘󠀖󠀗󠀘￰￰￰￰￰ӀТIА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
          ResetFilter()
           wait(2)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLΥ ЅНӀТТТТ", "All")
          ResetFilter()
           wait(3)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*￰￰￰с￰￰￰￰um￰￰￰￰ѕ￰￰￰￰а￰￰￰￰ӏ￰￰￰￰оt￰￰￰*", "All")
          ResetFilter()

            -- Follow the target instead of teleporting
            local followConnection2 = game:GetService("RunService").Stepped:Connect(function()
                if localCharacter and player.Character then
                    local targetPosition = player.Character.HumanoidRootPart.Position
                    local currentPosition = localCharacter.HumanoidRootPart.Position
                    local direction = (targetPosition - currentPosition).Unit
                    local speed = 10 -- Adjust this value to control the speed of following
                    local newPosition = currentPosition + direction * speed * game:GetService("RunService").Stepped:Wait()
                    localCharacter.HumanoidRootPart.CFrame = CFrame.new(newPosition, targetPosition)
                end
            end)

            wait(1)
            stopAnimation2(animationTrack2, animationConnection2, floatConnection, followConnection2)
        end
    else
        Orion:MakeNotification({
            Name = "Error",
            Content = "Player not found.",
            Time = 5
        })
    end
end

function stopAnimations()
    stopAnimation(animationTrack, animationConnection, followConnection)
    stopAnimation2(animationTrack2, animationConnection2, floatConnection, nil)
end

function stopAnimation(track, connection, followConnection)
    if track then
        track:Stop()
        track = nil
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if followConnection then
        followConnection:Disconnect()
        followConnection = nil
    end
end

function stopAnimation2(track, connection, floatConnection, followConnection)
    if track then
        track:Stop()
        track = nil
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if floatConnection then
        floatConnection:Disconnect()
        floatConnection = nil
        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        if localCharacter then
            localCharacter.HumanoidRootPart.Anchored = false
            localCharacter.HumanoidRootPart.CanCollide = true
        end
    end
    if followConnection then
        followConnection:Disconnect()
        followConnection = nil
    end
end

function stopAnimationWithCode(args, speaker)
    if bangDied then
        bangDied:Disconnect()
        bangDied = nil
    end

    if bang then
        bang:Stop()
        bang = nil
    end

    if bangAnim then
        bangAnim:Destroy()
        bangAnim = nil
    end

    if bangLoop then
        bangLoop:Disconnect()
        bangLoop = nil
    end
end

Tab:AddParagraph("IMPORTANT","Put Animation: 1 if you're a Male and put Animation: 2 if you're a Female! (Animation 2 isn't the best right now)")

local Section = Tab:AddSection({
    Name = "lowercase A-Z"
})

--[[

░██████╗███████╗███╗░░██╗████████╗███████╗███╗░░██╗░█████╗░███████╗░██████╗
██╔════╝██╔════╝████╗░██║╚══██╔══╝██╔════╝████╗░██║██╔══██╗██╔════╝██╔════╝
╚█████╗░█████╗░░██╔██╗██║░░░██║░░░█████╗░░██╔██╗██║██║░░╚═╝█████╗░░╚█████╗░
░╚═══██╗██╔══╝░░██║╚████║░░░██║░░░██╔══╝░░██║╚████║██║░░██╗██╔══╝░░░╚═══██╗
██████╔╝███████╗██║░╚███║░░░██║░░░███████╗██║░╚███║╚█████╔╝███████╗██████╔╝
╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚══╝░╚════╝░╚══════╝╚═════╝░
--]]

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "anal sex pls",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхpls", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anal sex",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ass sex pls",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "ass sex",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "Boom cockshot!",
    Callback = function()
sendMessage("В￰￰󠀕󠀕󠀕о￰󠀕󠀕󠀕￰o￰󠀕󠀕󠀕￰m󠀕󠀕󠀕￰￰с￰￰󠀕󠀕󠀕￰￰ос󠀕󠀕󠀕k󠀕󠀕󠀕ѕһ￰￰󠀕󠀕󠀕￰￰оt!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boner alert!",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕raӏеrt!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butt sex",
    Callback = function()
sendMessage("buttѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e￰￰￰х", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big cock",
    Callback = function()
sendMessage("b￰іgс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobs or ass?",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕorа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big ass thighs",
    Callback = function()
sendMessage("b￰іgа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕthіghѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big black cock",
    Callback = function()
sendMessage("b￰іgblackс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big ass",
    Callback = function()
sendMessage("b￰іgа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Be my wife!",
    Callback = function()
sendMessage("Ве mу wіfе!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "Can I see those cute boobs of yours?",
    Callback = function()
sendMessage("Саn І ѕее thоѕе сutе bооbѕ оf уоurѕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock sucker",
    Callback = function()
sendMessage("с￰￰￰￰о￰￰￰￰с￰￰￰￰k￰￰￰￰￰￰￰￰ѕ￰￰￰￰u￰￰￰￰с￰￰￰￰k￰￰￰￰е￰￰￰￰r", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cum on me please!",
    Callback = function()
sendMessage("С￰￰￰￰u￰￰mo￰￰￰￰￰n￰￰￰￰m￰￰￰ер￰￰￰ӏease!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cum please",
    Callback = function()
sendMessage("с￰￰￰￰u￰￰mр￰￰￰ӏease", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cut yourself.",
    Callback = function()
sendMessage("сutyоurself.", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "child porn",
    Callback = function()
sendMessage("сhildроrn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cock incoming!",
    Callback = function()
sendMessage("C󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥сki⁥⁥󠀕󠀕󠀕󠀕⁥nс⁥⁥󠀕󠀕󠀕󠀕⁥о󠀕󠀕󠀕󠀕m󠀕󠀕󠀕󠀕i󠀕󠀕󠀕󠀕n⁥⁥⁥g!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cock in bedroom",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥с󠀕⁥⁥kі⁥󠀕󠀕󠀕󠀕⁥⁥nb⁥⁥е󠀕󠀕󠀕󠀕dr⁥ооm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock or boobs",
    Callback = function()
sendMessage("с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰ko￰￰r￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕ?", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "damn you got a long schlong daddy",
    Callback = function()
sendMessage("￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰nуоugоtаlongѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоngd￰￰￰￰￰￰ad￰￰￰dу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dirty hoe",
    Callback = function()
sendMessage("dіrtуһое", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fuck yourself",
    Callback = function()
sendMessage("󠀕󠀖󠀗󠀕f󠀖󠀗󠀖󠀗󠀖󠀗󠀖󠀗󠀕󠀕󠀖󠀗󠀖󠀗󠀖󠀗uс󠀕󠀕󠀖󠀗󠀕k󠀖󠀗󠀖󠀗y󠀕󠀕󠀖󠀗󠀖󠀗󠀖󠀗󠀕о󠀖󠀗u󠀖󠀗󠀕󠀖r󠀖󠀗󠀕󠀖󠀗󠀖󠀗󠀖󠀗ѕ󠀖󠀗󠀖󠀕󠀖󠀗󠀖󠀗󠀕󠀕󠀕e󠀖󠀗l󠀖󠀗f", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fuck you",
    Callback = function()
sendMessage("󠀖󠀖󠀗f󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖u󠀖󠀗󠀕󠀖󠀖󠀖󠀗󠀖󠀖󠀖󠀗󠀗󠀕󠀖с󠀖󠀗󠀖󠀖󠀗󠀖󠀖󠀗󠀕󠀖kу󠀖󠀗󠀕󠀖󠀖ou", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fuck off",
    Callback = function()
sendMessage("󠀖󠀖󠀗f󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖u󠀖󠀗󠀕󠀖󠀖󠀖󠀗󠀖󠀖󠀖󠀗󠀗󠀕󠀖с󠀖󠀗󠀖󠀖󠀗󠀖󠀖󠀗󠀕󠀖ko󠀕󠀕󠀗󠀖󠀖󠀗󠀕󠀖f󠀕󠀖󠀖󠀗󠀕󠀖󠀗󠀕󠀗󠀕󠀖󠀗f", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "free porn",
    Callback = function()
sendMessage("frеероrn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fatass hoe",
    Callback = function()
sendMessage("f󠀘󠀕󠀖󠀗аt￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕһ⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀕󠀖󠀗ое", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fat ass",
    Callback = function()
sendMessage("f󠀘󠀕󠀖󠀗аt ￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕs", "All")
ResetFilter()
    end
})

 Tab:AddLabel("G")

  Tab:AddButton({
    Name = "go end your own life.",
    Callback = function()
sendMessage("gо еnd уоur оwn lіfе.", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "hail hitler",
    Callback = function()
sendMessage("һ󠀕󠀘󠀖󠀘󠀕󠀕󠀕󠀕а󠀕󠀘󠀖󠀕󠀕і󠀕󠀕ӏһ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hardcore sex",
    Callback = function()
sendMessage("һаrdсоrеѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "holy fuck",
    Callback = function()
sendMessage("󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕ӏ󠀕󠀕уf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖k", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "i eat pussy",
    Callback = function()
sendMessage("і еаt р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love minors",
    Callback = function()
sendMessage("і ӏоvе mіnоrѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love you",
    Callback = function()
sendMessage("і ӏоvе уоu", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I love cocks",
    Callback = function()
sendMessage("І ӏоvес￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love boobs",
    Callback = function()
sendMessage("і ӏоvе b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i like titties",
    Callback = function()
sendMessage("і ӏіkе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "im gonna make you pregnant mommy",
    Callback = function()
sendMessage("іm gоnnа mаkе уоu рrеgnаnt mоmmу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm sexy, and you know it",
    Callback = function()
sendMessage("і'mѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху,аndуουknοwіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm horny so moan",
    Callback = function()
sendMessage("і'm һ￰￰￰ο￰￰￰￰rn￰у ѕο mοаn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm mad horny",
    Callback = function()
sendMessage("і'm mad һ￰￰￰ο￰￰￰￰rn￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm gonna bang you hard",
    Callback = function()
sendMessage("і'm gοnnа bаng уοu һаrd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so hard rn",
    Callback = function()
sendMessage("і'm ѕо hаrd rn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so wet daddy",
    Callback = function()
sendMessage("і'm ѕо wеt daddy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so wet",
    Callback = function()
sendMessage("і'm ѕо wеt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm craving titties",
    Callback = function()
sendMessage("i'm cravingt￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰t￰￰tі￰￰е￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I would like to see some titties",
    Callback = function()
sendMessage("Ι wοuӏd ӏіkе tο ѕее ѕοmе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i wanna kms",
    Callback = function()
sendMessage("і wаnnа kmѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i wanna smash you",
    Callback = function()
sendMessage("і wаnnа ѕmаѕh уоu", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i want to drink your breasts",
    Callback = function()
sendMessage("іwаnttоdrіnkуоurbrеаѕts", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I do sexy things",
    Callback = function()
sendMessage("І dо ѕеху thіngѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I banged your girl so hard",
    Callback = function()
sendMessage("І bаngеd уоur gіrl ѕо һаrd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i dont give a shit",
    Callback = function()
sendMessage("іdоntgіvеаѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love sex",
    Callback = function()
sendMessage("і ӏоvе ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I'll make you pregnant",
    Callback = function()
sendMessage("І'ӏӏ mаkе уоu рrеgnаnt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "imagine getting no bitches",
    Callback = function()
sendMessage("іmаgіnе gеttіng nо b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "kill yourself",
    Callback = function()
sendMessage("kіӏlуоurѕеӏf", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "keep moaning",
    Callback = function()
sendMessage("keep mоаning", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lets do doggy style",
    Callback = function()
sendMessage("ӏеts dо dоggуѕtуӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lets have sex",
    Callback = function()
sendMessage("ӏеts һаve ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "let me squish those titties",
    Callback = function()
sendMessage("ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lgbtq+ is related to autism",
    Callback = function()
sendMessage("ӏgbtq+ іѕ rеӏаtеd tо аutіѕm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lil n-word",
    Callback = function()
sendMessage("ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕ln󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕а", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "Mind if you let me squish those titties",
    Callback = function()
sendMessage("Mind if you ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "my condom fell off!",
    Callback = function()
sendMessage("mусоnd￰￰￰￰оmfеӏӏоff!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Mr Breast is so cool",
    Callback = function()
sendMessage("Мr Вrеаѕt іѕ ѕо сооl", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "my cock is dirty",
    Callback = function()
sendMessage("mу с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k іѕ dirtу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "make me pregnant",
    Callback = function()
sendMessage("mаkе mе рrеgnаnt", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "Naked boys",
    Callback = function()
sendMessage("Νаkеd Вοуѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Naked girls",
    Callback = function()
sendMessage("Νаkеd Gіrӏѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nice tits",
    Callback = function()
sendMessage("nісеt￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oral sex",
    Callback = function()
sendMessage("оrаӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ех", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pussy licker",
    Callback = function()
sendMessage("р󠀕󠀕󠀕u󠀕󠀕󠀕s󠀕󠀕󠀕sу ӏi󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕󠀕󠀕е󠀕󠀕󠀕󠀕󠀕󠀕r", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "rape me",
    Callback = function()
sendMessage("rареmе", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "spank me daddy",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕р󠀕󠀕󠀕а󠀕󠀕󠀕n󠀕󠀕󠀕k󠀕󠀕󠀕 󠀕󠀕󠀕m󠀕󠀕󠀕е󠀕󠀕󠀕 󠀕󠀕󠀕d󠀕󠀕󠀕а󠀕󠀕󠀕d󠀕󠀕󠀕d󠀕󠀕󠀕у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sex slave",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕е󠀕󠀕󠀕х󠀕󠀕󠀕 󠀕󠀕󠀕ѕ󠀕󠀕󠀕ӏ󠀕󠀕󠀕а󠀕󠀕󠀕v󠀕󠀕󠀕е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Sweet cock dude",
    Callback = function()
sendMessage("Ѕwееt сосk dudе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕m󠀕ус￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Sweet cock you got up there",
    Callback = function()
sendMessage("Ѕwееtс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰kуоugоtuрthеrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shut the fuck up",
    Callback = function()
sendMessage("ѕһutt󠀕󠀕󠀕󠀕h󠀕󠀕e󠀕󠀕󠀕f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖kuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Shut yo goofy ass up",
    Callback = function()
sendMessage("Ѕһutуоgооfуа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shut yo broke ass up",
    Callback = function()
sendMessage("ѕһutуоbrоkeа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "suck my cock retard",
    Callback = function()
sendMessage("ѕuс󠀖km󠀖󠀖ycо󠀖сkr󠀖еt󠀖аr󠀖d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "son of a bitch",
    Callback = function()
sendMessage("sonofab󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘с󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "small penis",
    Callback = function()
sendMessage("smallр￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "Theres cum everywhere!",
    Callback = function()
sendMessage("Тһеrеѕс￰￰￰￰umеvеrуwһеrе!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "that bbc dont play",
    Callback = function()
sendMessage("tһаt￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰сdоntрlау", "All")
ResetFilter()
    end
})

 Tab:AddLabel("U")

  Tab:AddButton({
    Name = "ur gf was craving my raging schlong",
    Callback = function()
sendMessage("ur gf wаѕ сrаvіng mу rаgіng ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ur moms booty is delicious",
    Callback = function()
sendMessage("ur mоmѕ bооtу іѕ dеlісіоuѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "why is this hard-r not getting whipped?",
    Callback = function()
sendMessage("wһ⁥⁥⁥⁥⁥⁥⁥у⁥⁥і⁥⁥ѕtһ⁥⁥⁥⁥⁥⁥⁥іѕn⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥⁥⁥g⁥⁥ern⁥⁥⁥⁥⁥⁥⁥оtgе󠀕󠀕󠀕󠀕󠀕󠀕t⁥⁥tі󠀕󠀕󠀕⁥⁥󠀕󠀕󠀕n󠀕⁥⁥󠀕gwһ⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥ір⁥⁥⁥⁥⁥⁥⁥реd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wanna have sex?",
    Callback = function()
sendMessage("wаnnа һаvе ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wsg bbg you lookin sexy",
    Callback = function()
sendMessage("wѕg bbg уоu lооkіn ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "what the fuck",
    Callback = function()
sendMessage("󠀕w󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕аtt󠀕󠀕󠀕󠀕h󠀕󠀕e󠀕󠀕󠀕f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wanna see some bbc",
    Callback = function()
sendMessage("wаnnа sее sоmе ￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Y")

  Tab:AddButton({
    Name = "you like to rape and suck black oiled up men",
    Callback = function()
sendMessage("уоu lіkе tо rаре аnd ѕuсk blасk оіlеd uр mеn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "yo my shaft is hard, mind jerking it?",
    Callback = function()
sendMessage("уо mу ѕhаft іѕ һаrd, mіnd јеrkіng іt?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're such a whore",
    Callback = function()
sendMessage("уоu'rе ѕuсһ а wһоrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're a pedophile",
    Callback = function()
sendMessage("уоu'rе а реdорһіӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you pathetic slut",
    Callback = function()
sendMessage("уоu раtһеtіс ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're a pussy",
    Callback = function()
sendMessage("уоu'rе а р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're so sexy",
    Callback = function()
sendMessage("уоu'rе ѕо ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхy", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "BE MY WIFE!",
    Callback = function()
sendMessage("ВЕ MΥ WӀFЕ!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY LATINAS",
    Callback = function()
sendMessage("ВІG ВООТΥ LАТІΝАЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY ASIANS",
    Callback = function()
sendMessage("ВІG ВООТΥ АЅІАΝЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY FEMBOYS",
    Callback = function()
sendMessage("ВІG ВООТΥ FЕMBОΥЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY",
    Callback = function()
sendMessage("ВІG ВООТΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOBS",
    Callback = function()
sendMessage("BIG ВООВS", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "CAN I PISS INSIDE YOUR BUTTHOLE",
    Callback = function()
sendMessage("САNӀРӀЅЅӀNЅІDЕΥОURBUTTНОLЕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CAN I PISS ON YOU?",
    Callback = function()
sendMessage("САNӀРӀЅЅОNΥОU?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COCK IN BEDROOM",
    Callback = function()
sendMessage("С￰￰󠀕󠀕󠀕￰￰О￰С󠀕￰￰￰󠀕󠀕￰KӀ￰￰NBE￰￰DRО￰￰OМ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM ON ME",
    Callback = function()
sendMessage("СUМОΝМЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM ON MY FACE",
    Callback = function()
sendMessage("СUMОNMΥFАСЕ!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "DO YOU HAVE TITS?",
    Callback = function()
sendMessage("DО ΥОU НАVЕ TӀTЅ?", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "EAT PUSSY BITCH",
    Callback = function()
sendMessage("ЕАTР￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅΥВ￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "FATASS HOE",
    Callback = function()
sendMessage("FАTАЅЅ НОE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FAT ASS",
    Callback = function()
sendMessage("F￰￰󠀕󠀕󠀕￰АTА￰￰󠀕󠀕󠀕￰ЅЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FREE HENTAI",
    Callback = function()
sendMessage("FREE Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCK YOU",
    Callback = function()
sendMessage("FᴜСΚYОᴜ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "HELP! THERE'S A COCK IN MY ASS",
    Callback = function()
sendMessage("HЕLР!THЕRЕЅАСОСKӀNMΥА￰￰Ѕ￰￰Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HELP! THERE'S A HOE CHASING ME",
    Callback = function()
sendMessage("НЕLР! ТНЕRЕS А НОЕ СНАSING МЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "I AM ABOUT TO CUM",
    Callback = function()
sendMessage("IА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I EAT PUSSY",
    Callback = function()
sendMessage("Ӏ ЕАТ РUЅЅҮ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I PREFER PUSSY",
    Callback = function()
sendMessage("ӀРRЕFЕRР￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I HAVE A MASSIVE COCK",
    Callback = function()
sendMessage("ӀHAVEAMASЅIVEСОСK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I HAD AWESOME SEX WITH UR MOM!!!!",
    Callback = function()
sendMessage("ӀHADAWЕЅОMЕЅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕХWӀTHURMОM!!!!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ILL MAKE YOU PREGNANT",
    Callback = function()
sendMessage("ILL МΑKΕ ΥОU РRΕGΝΑΝТ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "LET ME SQUICH THOSE TITTIES",
    Callback = function()
sendMessage("LЕТМЕЅQUІЅНТНОЅЕТІТТІЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LETS HAVE SEX",
    Callback = function()
sendMessage("LETЅ HАVE Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕХ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LET'S FUCK",
    Callback = function()
sendMessage("L￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ETSF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MY CONDOM FELL OFF!",
    Callback = function()
sendMessage("MΥ СОNDОM FЕLL ОFF!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "NAKED GIRLS",
    Callback = function()
sendMessage("ΝΑKΕDGIRLЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAKED BOYS",
    Callback = function()
sendMessage("ΝАΚЕD ВОΥЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oh my god, not this DUMBASS",
    Callback = function()
sendMessage("oh my god, not this DUМВ АЅЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "PUT YOUR COCK IN MY ASS",
    Callback = function()
sendMessage("РUTΥОURСОСKӀNMΥА￰￰Ѕ￰￰Ѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "STRAIGHT POWER MOTHERFUCKERS",
    Callback = function()
sendMessage("STRAIGHTPOWERM￰￰￰￰￰O￰￰￰￰￰T￰￰￰￰￰H￰￰￰￰￰E￰￰￰￰￰R￰￰￰￰￰F￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ￰￰￰￰￰￰￰￰E￰￰￰￰￰￰￰RS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SUCK MY COCK",
    Callback = function()
sendMessage("S󠀕󠀖󠀗UС󠀕󠀖󠀗KМ󠀕󠀖󠀗ΥС󠀕󠀖󠀗O⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖󠀗⁥⁥⁥⁥⁥СK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT THE FUCK UP",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP FAGGOT",
    Callback = function()
sendMessage("󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖S󠀕󠀖󠀗󠀕󠀖H󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖UTU󠀗󠀕PF󠀗󠀕󠀖󠀗󠀕󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕A󠀗󠀕G󠀕󠀖󠀗󠀕󠀖󠀗󠀗󠀕󠀖󠀗GO󠀗󠀕T", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP CUNT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTUPС￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP HOE",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTUPНОЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHAKE THAT ASS",
    Callback = function()
sendMessage("ЅHAKEТН󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АТА󠀕󠀕󠀕󠀕Ѕ󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SON OF A BITCH",
    Callback = function()
sendMessage("󠀕󠀕󠀕󠀕Ѕ󠀕󠀕󠀕󠀕O󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀘󠀕󠀖NO󠀖󠀕󠀕󠀕󠀕󠀗󠀘󠀕󠀕󠀕󠀕󠀕󠀖FA󠀗󠀘󠀕󠀕󠀕󠀕󠀕󠀖В󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀗󠀕󠀕󠀕󠀕󠀘󠀕󠀖󠀕󠀕󠀕I󠀗󠀘󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕T󠀕󠀕󠀕󠀕C󠀗󠀕󠀕󠀕󠀕󠀘󠀕󠀖H", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Y")

  Tab:AddButton({
    Name = "YOU ARE SO ASS AT THIS GAME",
    Callback = function()
sendMessage("ΥОUАRЕЅО А￰￰￰Ѕ￰￰￰Ѕ АТTHIЅGАМЕ", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "RolePlay",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "RP A-Z"
})

--[[

██████╗░░█████╗░██╗░░░░░███████╗██████╗░██╗░░░░░░█████╗░██╗░░░██╗
██╔══██╗██╔══██╗██║░░░░░██╔════╝██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝
██████╔╝██║░░██║██║░░░░░█████╗░░██████╔╝██║░░░░░███████║░╚████╔╝░
██╔══██╗██║░░██║██║░░░░░██╔══╝░░██╔═══╝░██║░░░░░██╔══██║░░╚██╔╝░░
██║░░██║╚█████╔╝███████╗███████╗██║░░░░░███████╗██║░░██║░░░██║░░░
╚═╝░░╚═╝░╚════╝░╚══════╝╚══════╝╚═╝░░░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░
--]]

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "аh уеѕ~ *moans* уеѕ һаrdеr~",
    Callback = function()
sendMessage("аh уеѕ~ *m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ѕ* уеѕ һаrdеr~", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "*bites your cock*",
    Callback = function()
sendMessage("*bіtеѕ уоur с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "*cums*",
    Callback = function()
sendMessage("*󠀕󠀕󠀕󠀕󠀕cu󠀕󠀕󠀕󠀕󠀕m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕s󠀕󠀕󠀕󠀕*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("J")

  Tab:AddButton({
    Name = "*jizzles on your face*",
    Callback = function()
sendMessage("*јіzzӏеѕоnуоurface*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "*looks under skirt* wow nice balls bro",
    Callback = function()
sendMessage("*ӏооkѕ undеr ѕkіrt* wоw nісе bаlӏѕ brо", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "*masturbates*",
    Callback = function()
sendMessage("*m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰e￰￰￰ѕ*", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "*moans*",
    Callback = function()
sendMessage("*moa󠀖󠀖nѕ󠀖*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "nice balls *slaps them*",
    Callback = function()
sendMessage("*nісеbаӏӏѕ*sӏарstһеm*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "*rapes*",
    Callback = function()
sendMessage("r ареs*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "*sucks cock*",
    Callback = function()
sendMessage("*󠀖󠀖ѕuсksс󠀖o󠀖сk*", "All")
ResetFilter()
    end
})


local Tab = Window:MakeTab({
    Name = "NSFW Websites",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Safe For Work websites"
})

--[[

░██╗░░░░░░░██╗███████╗██████╗░░██████╗██╗████████╗███████╗░██████╗
░██║░░██╗░░██║██╔════╝██╔══██╗██╔════╝██║╚══██╔══╝██╔════╝██╔════╝
░╚██╗████╗██╔╝█████╗░░██████╦╝╚█████╗░██║░░░██║░░░█████╗░░╚█████╗░
░░████╔═████║░██╔══╝░░██╔══██╗░╚═══██╗██║░░░██║░░░██╔══╝░░░╚═══██╗
░░╚██╔╝░╚██╔╝░███████╗██████╦╝██████╔╝██║░░░██║░░░███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═════╝░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░
--]]

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "blacked.com",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏасkеd.соm", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "onlyfans.com",
    Callback = function()
sendMessage("o󠀖n󠀖ӏyf󠀖an󠀖󠀖󠀖ѕ.󠀖󠀖󠀖со󠀖󠀖󠀖󠀖m", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pornhub.com",
    Callback = function()
sendMessage("р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b.сom", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "rule34.xxx",
    Callback = function()
sendMessage("r󠀕󠀕󠀕u󠀕󠀕󠀕ӏ󠀕󠀕󠀕е3󠀕󠀕󠀕4.ххх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "e621.net",
    Callback = function()
sendMessage("е󠀕󠀕󠀕6󠀕󠀕󠀕2󠀕󠀕󠀕1󠀕󠀕󠀕.n󠀕󠀕󠀕е󠀕󠀕󠀕t", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "xvideos.com",
    Callback = function()
sendMessage("х󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗vid󠀕󠀕󠀕󠀕е󠀕󠀕󠀕󠀕o󠀗󠀕󠀕󠀕󠀕ѕ󠀕󠀕󠀕.󠀕󠀕󠀕с󠀕о󠀕m", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P (Capitals)")

  Tab:AddButton({
    Name = "PORNHUB.COM",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕О󠀕󠀕󠀕R󠀕󠀕󠀕Ν󠀕󠀕󠀕Н󠀕󠀕󠀕U󠀕󠀕󠀕В.СOM", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X (Capitals)")

  Tab:AddButton({
    Name = "XVIDEOS.COM",
    Callback = function()
sendMessage("Х󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕VӀ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕󠀕󠀕󠀕󠀕ОЅ.СOM", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Full Links"
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "https://blacked.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/bӏac󠀖kеd󠀖.соm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "https://onlyfans.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/оn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏуf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ѕ.сom", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "https://pornhub.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b.сom", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MASTURBATING TO HTTPS://PORNHUB.COM",
    Callback = function()
sendMessage("МА󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗Т󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗UR󠀘ВАТӀΝGTOHТ󠀕󠀕󠀕󠀕ТРЅ󠀕󠀕󠀕󠀕:/󠀕󠀖󠀗󠀘󠀕/РО󠀕󠀕RΝ󠀕󠀕НU󠀕󠀖󠀗В.C󠀕󠀖󠀗󠀘OM", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "NOT LEGIT",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Legit A-Z"
})

--[[

███╗░░██╗░█████╗░████████╗  ██╗░░░░░███████╗░██████╗░██╗████████╗
████╗░██║██╔══██╗╚══██╔══╝  ██║░░░░░██╔════╝██╔════╝░██║╚══██╔══╝
██╔██╗██║██║░░██║░░░██║░░░  ██║░░░░░█████╗░░██║░░██╗░██║░░░██║░░░
██║╚████║██║░░██║░░░██║░░░  ██║░░░░░██╔══╝░░██║░░╚██╗██║░░░██║░░░
██║░╚███║╚█████╔╝░░░██║░░░  ███████╗███████╗╚██████╔╝██║░░░██║░░░
╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ╚══════╝╚══════╝░╚═════╝░╚═╝░░░╚═╝░░░
--]]

Tab:AddParagraph("Note","'NOT LEGIT' on this script means that the bypasses DON'T look like it was said normally")

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "a hard r",
    Callback = function()
sendMessage("п󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕г", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "a lil n word",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ɡ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ɡ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fuck",
    Callback = function()
sendMessage("f￰￰￰￰￰󠀕󠀕￰￰￰￰￰ụç󠀕󠀕ķ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "KKK",
    Callback = function()
sendMessage("ККК", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[

░██████╗░░█████╗░███╗░░░███╗███████╗░██████╗
██╔════╝░██╔══██╗████╗░████║██╔════╝██╔════╝
██║░░██╗░███████║██╔████╔██║█████╗░░╚█████╗░
██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░░╚═══██╗
╚██████╔╝██║░░██║██║░╚═╝░██║███████╗██████╔╝
░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═════╝░
--]]

local Section = Tab:AddSection({
    Name = "Rate My Avatar (A-Z)"
})
 Tab:AddLabel("Change Booth's text")

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "horny",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="һ󠀖󠀗󠀕ο󠀖󠀗󠀕󠀖rn󠀖у",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="ѕ󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕m󠀕ус￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "E-Sex",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})


local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[

███╗░░░███╗██╗░██████╗░█████╗░
████╗░████║██║██╔════╝██╔══██╗
██╔████╔██║██║╚█████╗░██║░░╚═╝
██║╚██╔╝██║██║░╚═══██╗██║░░██╗
██║░╚═╝░██║██║██████╔╝╚█████╔╝
╚═╝░░░░░╚═╝╚═╝╚═════╝░░╚════╝░
--]]

local Section = Tab:AddSection({
    Name = "Chat"
})

  Tab:AddButton({
    Name = "Chat a huge annoying blank text chat bubble",
    Callback = function()
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("                               󠀖")
else
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("                                                                                                                                                                                                       󠀖", "All")
end
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Chat a long annoying blank text chat bubble",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/WPHVj8Lj"))()
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Chat our dsc link",
    Callback = function()
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("ht󠀖tp󠀖s:/󠀖/d󠀖󠀖󠀖󠀖ѕ󠀖󠀖с.󠀖󠀖󠀖g󠀖g󠀖/󠀖󠀖󠀖󠀖vаdrіftz")
else
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ht󠀖tp󠀖s:/󠀖/d󠀖󠀖󠀖󠀖ѕ󠀖󠀖с.󠀖󠀖󠀖g󠀖g󠀖/󠀖󠀖󠀖󠀖vаdrіftz", "All")
end
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Admin"
})

  Tab:AddButton({
    Name = "Infinite yield",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

  Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end
})

Tab:AddParagraph("Hello :)","its The End, for now..")

OrionLib:Init()
end
loadScript()

OrionLib:Init()
end

local function runMobileScript()

local TextChatService = game:GetService("TextChatService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local Keywords = {
    [" "] = "",
    ["stfu"] = "ѕ󠀕󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥f󠀖󠀕⁥⁥⁥u",
    ["asshole"] = "аssһоӏе",
    ["ass"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["arse"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е",
    ["anus"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ",
    ["Anus"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ",
    ["anal"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ",
    ["blowjob"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",
    ["boner"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r",
    ["boobies"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ",
    ["bullshit"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt",
    ["bastard"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd",
    ["beaner"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er",
    ["butthole"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе",
    ["bootyhole"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe",
    ["bondage"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оndаge",
    ["Bondage"] = "B⁥⁥⁥о⁥⁥⁥n⁥⁥⁥d⁥⁥⁥а⁥⁥⁥g⁥⁥⁥е⁥⁥⁥",
    ["butt"] = "butt",
    ["booty"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу",
    ["boobs"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s",
    ["boob"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b",
    ["breasts"] = "brеаѕtѕ",
    ["bbc"] = "￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с",
    ["bitch"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ",
    ["Bitch"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ",
    ["bitches"] = "b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ",
    ["Bitches"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ",
    ["cocaine"] = "сосаіnе",
    ["creampie"] = "сrеаmріе",
    ["cum"] = "с￰￰￰￰um",
    ["cunts"] = "с￰￰￰￰untѕ",
    ["cunt"] = "с￰￰￰￰unt",
    ["cock"] = "с￰￰￰￰осk",
    ["cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["cuckold"] = "￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold",
    ["condoms"] = "соndоmѕ",
    ["condom"] = "соnd￰￰￰￰оm",
    ["coochies"] = "соосһіеs",
    ["coochie"] = "соосһіе",
    ["crap"] = "сr⁥⁥⁥⁥ар",
    ["Crap"] = "сr⁥⁥⁥⁥ар",
    ["CRAP"] = "сr⁥⁥⁥⁥ар",
    ["cunny"] = "сunnу",
    ["Cunny"] = "сunnу",
    ["clit"] = "с￰￰￰￰ӏіt",
    ["Clit"] = "с￰￰￰￰ӏіt",
    ["dumbass"] = "d￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["dildo"] = "d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо",
    ["Dildo"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо",
    ["discord"] = "dіѕсоrd",
    ["dickhead"] = "d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad",
    ["dick"] = "⁥⁥⁥⁥⁥⁥d⁥⁥і⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖с⁥k",
    ["damn"] = "￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n",
    ["doggystyle"] = "d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе",
    ["Doggystyle"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе",
    ["fatass"] = "fat￰￰￰а￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕ",
    ["Fucked"] = "⁥⁥ꜰ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеd",
    ["fucked"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰с￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰k󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕е￰￰￰￰d",
    ["femboy"] = "fеmbоy",
    ["femboys"] = "fеmbоys",
    ["E-Rape"] = "Е-Rаре",
    ["E-rape"] = "Е-rаре",
    ["e-eаре"] = "Е-rаре",
    ["E-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["E-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["fuckers"] = "⁥⁥f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеrѕ",
    ["Fuckers"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰с￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰k󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕еrѕ",
    ["fucker"] = "⁥⁥ꜰ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеr",
    ["Fucker"] = "⁥⁥ꜰ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥kеr",
    ["faggot"] = "⁥⁥⁥⁥f⁥󠀕⁥ а󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥g⁥⁥о󠀕󠀕⁥⁥󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥t⁥⁥",
    ["Faggot"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰g￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰g󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕о￰￰￰￰t",
    ["fatass"] = "f￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Fatass"] = "F￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Fag"] = "⁥⁥⁥⁥⁥⁥F⁥⁥а⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖g⁥⁥⁥⁥",
    ["fag"] = "⁥⁥⁥⁥⁥⁥f⁥⁥а⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀕󠀕󠀕󠀕󠀖g⁥⁥⁥⁥",
    ["fap"] = "f⁥󠀕⁥⁥а⁥󠀕⁥⁥р",
    ["fanny"] = "fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу",
    ["horny"] = "һ￰￰￰ο￰￰￰￰rn￰у",
    ["hitler"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr",
    ["hentai"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі",
    ["hoes"] = "һоеѕ",
    ["hoe"] = "һ⁥⁥⁥⁥󠀕󠀕󠀕⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥е",
    ["instagram"] = "іnѕtаgrаm",
    ["insta"] = "іnѕta",
    ["Instagram"] = "іnѕtаgrаm",
    ["Insta"] = "іnѕta",
    ["kys"] = "k󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰y󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["lmfao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕m￰￰f￰￰ао",
    ["lmao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао",
    ["Lmao"] = "ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао",
    ["motherfucker"] = "mоtһеrfuсkеr",
    ["masturbate"] = "m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e",
    ["Masturbate"] = "М⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥b⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е",
    ["masturbating"] = "m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g",
    ["meth"] = "m￰￰￰еtһ",
    ["Meth"] = "M￰￰￰еtһ",
    ["molest"] = "m￰￰￰оӏеѕt",
    ["Molest"] = "M￰￰￰оӏеѕt",
    ["Niggas"] = "Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ",
    ["niggas"] = "n￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ",
    ["nigga"] = "n￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gа",
    ["nazi"] = "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥",
    ["Nazi"] = "⁥⁥⁥⁥⁥N⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥",
    ["naked"] = "nаkеd",
    ["nudes"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Nudes"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Niggas"] = "Ν󠀕󠀕󠀕󠀕󠀕⁥і󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕аs",
    ["nude"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е",
    ["Nude"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е",
    ["negro"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
    ["Negro"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o",
    ["nipples"] = "nіррӏеѕ",
    ["nipple"] = "nіррӏе",
    ["Nipples"] = "Nіррӏеѕ",
    ["Nipple"] = "Nіррӏе",
    ["nazi"] = "n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і",
    ["Nazi"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і",
    ["orgasm"] = "orgаѕm",
    ["onlyfans"] = "оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ",
    ["Onlyfans"] = "оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ",
    ["onlyfans.com"] = "оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ.сom",
    ["omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["pedophile"] = "реdорһіӏе",
    ["pornhub"] = "⁥⁥р󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕b",
    ["penis"] = "р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",
    ["porn"] = "р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n",
    ["pussies"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ",
    ["pussy"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у",
    ["piss"] = "рі󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕ss",
    ["queer"] = "quееr",
    ["Queer"] = "Quееr",
    ["rape"] = "r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре",
    ["retarded"] = "￰￰r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd",
    ["Retarded"] = "￰￰R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd",
    ["retard"] = "⁥⁥r⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d",
    ["Retard"] = "⁥⁥R⁥󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕е󠀖󠀕t 󠀕󠀕󠀕󠀕󠀖󠀕а⁥⁥⁥󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕⁥⁥⁥⁥󠀕d",
    ["rizz"] = "rіzz",
    ["Rapist"] = "R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst",
    ["rapist"] = "r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst",
    ["Rizz"] = "Rіzz",
    ["stripper"] = "ѕtrірреr",
    ["slave"] = "ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е",
    ["seduce"] = "ѕеduсе",
    ["slut"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut",
    ["shit"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt",
    ["sexy"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху",
    ["sex"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх",
    ["sperm"] = "ѕреrm",
    ["Sperm"] = "ѕреrm",
    ["Semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["semen"] = "ѕ󠀕󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥emen",
    ["schlong"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng",
    ["titties"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ",
    ["thots"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ",
    ["thot"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt",
    ["tits"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ",
    ["tit"] = "t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt",
    ["tranny"] = "tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у",
    ["Tranny"] = "Tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у",
    ["virginity"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу",
    ["virgins"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nѕ",
    ["vagina"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа",
    ["virgin"] = "v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰n",
    ["whore"] = "w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hоrе",
    ["weed"] = "￰￰w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d",
    ["Weed"] = "￰￰W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d",
    ["xxx"] = "ххх",
    ["Xxx"] = "Xхх",
    ["ASS"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ",
    ["ANUS"] = "АΝUЅ",
    ["ARSE"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰R󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ￰￰￰￰￰￰￰￰󠀕󠀕Е",
    ["ASSHOLE"] = "АЅЅНОLЕ",
    ["ANAL"] = "А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰N󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕А￰￰￰￰￰￰￰￰󠀕󠀕L",
    ["BASTARD"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АЅTАRD",
    ["BONER"] = "В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝЕR",
    ["BONDAGE"] = "В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝDAGE",
    ["BONDAGE"] = "В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В",
    ["BITCHES"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСНЕЅ",
    ["BLOWJOB"] = "В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В",
    ["BITCH"] = "В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН",
    ["BOOBS"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOBЅ",
    ["BOOB"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOB",
    ["BUTTHOLE"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTTНОLЕ",
    ["BUTT"] = "BUTT",
    ["BOOTY"] = "ВООТΥ",
    ["BULLSHIT"] = "В󠀖󠀖⁥⁥⁥⁥UL󠀖󠀖⁥⁥⁥⁥LЅН󠀖󠀖⁥⁥⁥⁥ӀТ",
    ["BEANER"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕANЕR",
    ["CUNTS"] = "С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNTS",
    ["COCAINE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["COOCHIES"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥ЕS",
    ["COOCHIE"] = "С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕⁥⁥⁥⁥ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е",
    ["CUNT"] = "С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT",
    ["CUCKOLD"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥KOLD",
    ["CUCK"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥K",
    ["CREAMPIE"] = "С󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥R󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥PIE",
    ["CUM"] = "СUМ",
    ["COCK"] = "СОСK",
    ["DISCORD"] = "DӀЅСОRD",
    ["DILDO"] = "D⁥󠀕󠀕󠀕󠀕⁥⁥Ӏ⁥󠀕󠀕󠀕󠀕⁥⁥L⁥󠀕󠀕󠀕󠀕⁥⁥DО",
    ["DUMBASS"] = "D󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕UM⁥⁥⁥⁥⁥⁥⁥⁥⁥BАЅЅ",
    ["DAMN"] = "DАМΝ",
    ["DICKHEAD"] = "D⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥IСΚНЕ󠀕⁥⁥󠀕AD",
    ["DICK"] = "D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚ",
    ["FAGGOT"] = "F󠀕󠀖󠀗󠀘￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀖󠀗󠀘А󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰󠀕G⁥⁥󠀖󠀗󠀘󠀖󠀗󠀘⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀘G󠀖󠀗󠀘󠀖󠀗󠀘￰￰￰￰￰￰￰О󠀖󠀗󠀘￰￰￰￰￰󠀖󠀗Т",
    ["FATASS"] = "F￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АTА￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ",
    ["FEMBOYS"] = "FЕМВОΥЅ",
    ["FEMBOY"] = "FЕМВОΥ",
    ["FUCKERS"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕U￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰С󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ΚERS",
    ["FUCKER"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕U￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰С󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ΚER",
    ["FUCKED"] = "￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕U￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰С󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ΚED",
    ["HITLER"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ІТL￰￰￰￰Е￰R",
    ["HENTAI"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ",
    ["HORNY"] = "НОRNY",
    ["HOES"] = "НОЕЅ",
    ["HOE"] = "Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОЕ",
    ["KYS"] = "ΚΥЅ",
    ["LMFAO"] = "LМFАО",
    ["LMAO"] = "LМАО",
    ["MASTURBATE"] = "МАЅТURВАТΕ",
    ["MASTURBATE"] = "МО󠀕󠀕󠀕󠀖󠀖ТНЕ󠀕󠀕󠀕󠀖󠀖R󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UC⁥⁥⁥ΚЕ⁥⁥⁥R",
    ["NUDES"] = "ΝUDЕЅ",
    ["NUDE"] = "Ν󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕Е",
    ["NEGRO"] = "Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕGRО",
    ["NIPPLES"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥Ѕ",
    ["NIPPLE"] = "Ν󠀕󠀕⁥Ӏ󠀕󠀕⁥⁥󠀕P⁥⁥P󠀕󠀖⁥⁥󠀕L󠀕󠀕󠀕⁥⁥󠀕󠀕󠀖󠀕Е󠀖⁥⁥",
    ["NAKED"] = "ΝΑKΕD",
    ["NAKED"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ",
    ["OMFG"] = "ОM⁥⁥⁥⁥⁥⁥⁥⁥FG",
    ["ORGASM"] = "О￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕RGASM",
    ["PENIS"] = "Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕΝӀЅ",
    ["PUSSIES"] = "Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅӀЕ￰￰S",
    ["PUSSY"] = "Р󠀕󠀕󠀕󠀖⁥⁥⁥⁥⁥󠀖󠀗󠀕U⁥⁥⁥⁥⁥Ѕ󠀕󠀕󠀕󠀖⁥⁥⁥⁥⁥󠀖󠀗󠀕S󠀕⁥⁥⁥⁥⁥󠀕󠀖󠀖󠀗󠀕Υ",
    ["PISS"] = "РӀ󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕SS",
    ["PORN"] = "РО󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕RΝ",
    ["PORNHUB"] = "⁥⁥Р⁥⁥⁥󠀕⁥⁥󠀕О⁥⁥R⁥⁥⁥⁥⁥󠀕⁥⁥󠀕N⁥⁥⁥󠀕󠀕Н⁥⁥⁥⁥⁥󠀕󠀕UВ",
    ["RETARD"] = "󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕R󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰󠀕⁥Е￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕⁥Т󠀕￰󠀕󠀕󠀕￰￰￰￰￰￰￰￰󠀕󠀕￰￰󠀕⁥A￰￰￰￰￰󠀕￰￰￰￰￰￰￰￰󠀕￰￰￰￰￰￰￰￰￰R󠀕󠀕D",
    ["RAPE"] = "RАРЕ",
    ["SHIT"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕НӀT",
    ["SEX"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХ",
    ["SEX"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХY",
    ["STFU"] = "ЅТFU",
    ["SLUT"] = "Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕LUT",
    ["SLAVE"] = "ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE",
    ["TITTIES"] = "TӀTTӀEЅ",
    ["TITS"] = "ТIТЅ",
    ["TIT"] = "TӀT",
    ["THOT"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОT",
    ["THOTS"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОTS",
    ["VIRGINITY"] = "V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY",
    ["VIRGINS"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀNS",
    ["VIRGIN"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀN",
    ["VAGINA"] = "V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А",
    ["XXX"] = "Х￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ХХ",
    ["WHORE"] = "W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОRЕ",
    ["WEED"] = "￰￰W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е￰￰E￰󠀕󠀕￰￰D",
    ["blacked.com"] = "blacked.c⁥⁥⁥о⁥⁥⁥m", --Nsfw websites
    ["pornhub.com"] = "р⁥⁥⁥о⁥⁥⁥r⁥⁥⁥n⁥⁥⁥һ⁥⁥⁥u⁥⁥⁥b.c⁥⁥⁥о⁥⁥⁥m",
    ["XVIDEOS.COM"] = "Х󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀖󠀕VӀ⁥⁥⁥⁥⁥⁥D⁥⁥⁥󠀕󠀕󠀕Е⁥⁥⁥󠀕󠀕󠀕ОЅ.С⁥⁥⁥󠀕󠀕󠀕ОМ",
    ["https://blacked.com"] = "httрs:/⁥⁥⁥/blacked.c⁥⁥⁥о⁥⁥⁥m",
    ["https://onlyfans.com"] = "ht⁥t⁥⁥рѕ⁥⁥:/⁥⁥/оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ.сom",
    ["PORNHUB.COM"] = "Р⁥⁥⁥О⁥⁥⁥R⁥⁥⁥Ν⁥⁥⁥Н⁥⁥⁥U⁥⁥⁥В.С⁥⁥⁥О⁥⁥⁥М⁥⁥⁥",
    ["Asshole"] = "аssһоӏе", --Capitals at the first letter
    ["Ass"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Arse"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е",
    ["Anal"] = "а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ",
    ["Blowjob"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",
    ["Boner"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r",
    ["Boobies"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ",
    ["Bullshit"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt",
    ["Bastard"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd",
    ["Beaner"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er",
    ["Butthole"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе",
    ["Bootyhole"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe",
    ["Butt"] = "bu⁥⁥⁥⁥⁥⁥⁥⁥tt",
    ["Booty"] = "B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу",
    ["Boobs"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s",
    ["Boob"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b",
    ["Breats"] = "Brеаѕtѕ",
    ["Bbc"] = "￰￰B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с",
    ["Cocaine"] = "сосаіnе",
    ["Creampie"] = "сrеаmріе",
    ["Cum"] = "с￰￰￰￰um",
    ["Cunts"] = "с￰￰￰￰untѕ",
    ["Cunt"] = "с￰￰￰￰unt",
    ["Cock"] = "с￰￰￰￰осk",
    ["Cuck"] = "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k",
    ["Cuckold"] = "￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold",
    ["Condoms"] = "соndоmѕ",
    ["Condom"] = "соnd￰￰￰￰оm",
    ["Coochies"] = "соосһіеs",
    ["Coochie"] = "соосһіе",
    ["Dumbass"] = "D￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Discord"] = "￰￰ᴅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰ѕ￰￰￰с￰￰￰￰￰￰о￰󠀕󠀕󠀕￰￰￰r￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰d",
    ["Dickhead"] = "D￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad",
    ["Dick"] = "ᴅ ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰￰с￰￰￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰k",
    ["Damn"] = "￰￰D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n",
    ["E-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-Sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["e-sex"] = "Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",
    ["E-Rape"] = "Е-Rаре",
    ["E-rape"] = "Е-rаре",
    ["e-rape"] = "Е-rаре",
    ["Fatass"] = "F￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ",
    ["Femboy"] = "Fеmbоy",
    ["Femboys"] = "Fеmbоys",
    ["Horny"] = "һ￰￰￰ο￰￰￰￰rn￰у",
    ["Hitler"] = "Нi󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥tl⁥⁥⁥⁥󠀗󠀕󠀕󠀕󠀕󠀕󠀖е󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖r",
    ["Hentai"] = "H󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕i", 
    ["hentai"] = "һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі", 
    ["Hoes"] = "һоеѕ",
    ["Hoe"] = "һ⁥⁥⁥⁥󠀕󠀕󠀕⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥е",
    ["Kys"] = "K⁥⁥⁥⁥⁥⁥⁥⁥y⁥⁥⁥ѕ",
    ["Lmfao"] = "Lm⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥о",
    ["Motherfucker"] = "Mot￰￰￰￰￰￰￰h￰e￰rf￰￰￰￰￰u￰с￰￰￰￰￰￰￰￰k￰e￰￰￰￰￰￰￰￰r",
    ["Masturbating"] = "m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g",
    ["Meth"] = "M￰￰￰еtһ",
    ["Naked"] = "Nаkеd",
    ["Nudes"] = "N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ",
    ["Orgasm"] = "orgаѕm",
    ["Omfg"] = "оm⁥⁥⁥⁥⁥⁥⁥⁥fg",
    ["Pedophile"] = "реdорһіӏе",
    ["Pornhub"] = "Р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һub",
    ["Penis"] = "р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",
    ["Porn"] = "р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n",
    ["Pussies"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ",
    ["Pussy"] = "р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у",
    ["Rape"] = "R￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре",
    ["Stripper"] = "Strірреr",
    ["Slave"] = "ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е",
    ["Seduce"] = "ѕеduсе",
    ["Slut"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut",
    ["Shit"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt",
    ["Sexy"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху",
    ["Sex"] = "ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх",
    ["Titties"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ",
    ["Thots"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ",
    ["Thot"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt",
    ["Tits"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ",
    ["Tit"] = "T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt",
    ["Virginity"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу",
    ["Virgin"] = "V￰￰￰￰￰￰і￰￰￰￰￰￰￰￰r￰￰￰￰￰￰￰￰g￰￰￰￰￰￰￰￰￰і￰￰￰￰￰￰￰￰n￰￰￰￰￰￰￰s",
    ["Vagina"] = "V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа",
    ["fuck you"] = "f󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖uc󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖ky󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖o󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖u",
    ["what the fuck"] = "wha⁥⁥⁥⁥⁥⁥tt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uс⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥k",
    ["shut the fuck up"] = "sһ⁥⁥⁥⁥⁥⁥utt⁥⁥⁥⁥⁥⁥һеf⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥ku⁥⁥⁥⁥⁥⁥⁥⁥⁥p",
    ["go fuck yourself"] = "gof⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥kу⁥⁥⁥⁥⁥о⁥⁥urself",
    ["fuck"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсk", --Sometimes worksb
    ["fucking"] = "f⁥⁥⁥⁥⁥⁥⁥⁥uсking",
    ["Fuck"] = "F⁥⁥⁥⁥⁥⁥⁥⁥uсk",
    ["FUCKING"] = " F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚӀ󠀕󠀕󠀕󠀖󠀕N⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕G ", 
    ["FUCKERS"] = "󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UС⁥⁥⁥ΚЕ⁥⁥⁥R󠀕󠀕󠀕󠀕S",
    ["FUCKER"] = "󠀕󠀕F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UC⁥⁥⁥ΚЕ⁥⁥⁥R",
    ["FUCKED"] = "F⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖⁥⁥⁥⁥⁥⁥⁥UС⁥⁥⁥ΚЕ⁥⁥⁥D",
    ["FUCK"] = "F⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥UСΚ", --always works
    ["FUCKS"] = "F⁥⁥⁥⁥U󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥C󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕⁥⁥⁥⁥ΚS", 
    ["bites your cock"] = "bіtеѕуоurсосk", --Sentences that dont work normally
    ["big black cock"] = "big black сосk",
    ["masturbates"] = "ma⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥st⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕⁥⁥⁥ur󠀕󠀕b󠀕󠀕a󠀕󠀕t󠀕󠀕e󠀕󠀕s",
    ["suck my cock retard"] = "ѕuсk my сосk ret⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥аrd",
    ["i pull all the bitches"] = "i pull all the bitсһеs",
    ["small penis"] = "small рen⁥⁥⁥⁥⁥⁥⁥⁥iѕ",
    ["nigger"] = "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеr",
    ["NIGGER"] = "NӀԍԍЕR",
    ["NIGGA"] = "NӀԍԍА",
    ["niggers"] = "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggеrѕ",
    ["suck my cock"] = "ѕ⁥⁥⁥u⁥⁥⁥с⁥⁥⁥kmyсо⁥⁥⁥сk",
    ["lets have sex"] = "⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ ⁥⁥⁥һ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥",
    ["I HAVE A MASSIVE COCK"] = "I HAVE A MASSIVE СОСK",
    ["SHUT THE FUCK UP"] = "SHUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР",
    ["I AM ABOUT TO CUM"] = "IАМ АВOU￰￰￰TTOС￰￰￰U￰￰￰М",
    ["wife"] = "wіfе", --Extra
    ["suck"] = "ѕuсk",
    ["love"] = "ӏ⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥vе",
    ["pregnant"] = "рrеgnаnt",
    ["mommy"] = "mоmmу",
    ["daddy"] = "d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у",
    ["WIFE"] = "WIFΕ",
    ["SUCK"] = "SUСK",
    ["kill"] = "k󠀕󠀕󠀕і󠀕󠀕󠀕l󠀕󠀕󠀕ӏ",
    ["yourself"] = "уо󠀕󠀕⁥⁥⁥⁥ur󠀕󠀕⁥⁥⁥⁥ѕ󠀕󠀕⁥⁥⁥⁥еlf",
    ["pedo"] = "p⁥⁥е⁥⁥⁥d⁥⁥⁥⁥⁥⁥⁥о"
}

local function Gen(Message)
    for real, bypass in pairs(Keywords) do
        Message = Message:gsub(real, bypass)
    end
    return Message
end

local function ChatLegacy(Message)
    local ChatRemote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
    if ChatRemote then
        ChatRemote:FireServer(Message, "All")
    else
        warn("SayMessageRequest not found in Legacy chat system.")
    end
end

local function ChatTCS(Message)
    local Channel = TextChatService.TextChannels.RBXGeneral
    if Channel then
        local success, err = pcall(function()
            Channel:SendAsync(Message)
        end)
        if not success then
            print("Error sending message in TCS:", err)
        end
    else
        print("RBXGeneral channel not found for TCS.")
    end
end

local connections = {}

local function setupLegacyChat()
    local playerGui = LocalPlayer:WaitForChild("PlayerGui")
    local chatGui = playerGui:WaitForChild("Chat")
    local chatBar = chatGui:FindFirstChild("ChatBar", true)

    if not chatBar then
        warn("ChatBar not found in Legacy chat system.")
        return
    end

    local connection = chatBar.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local message = chatBar.Text
            chatBar.Text = ""
            ChatLegacy(Gen(message))
        end
    end)

    table.insert(connections, connection)
end

local function setupTCSChat()
    local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
    ChatBar = ChatBar and (ChatBar:FindFirstChild("TextBox") or ChatBar) or nil

    if not ChatBar then
        warn("ChatBar not found in TCS chat system.")
        return
    end

    local connection1 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.Return then
            if ChatBar:IsFocused() then
                local message = ChatBar.Text
                ChatBar.Text = ""
                ChatTCS(Gen(message))
            end
        end
    end)

    local connection2 = ChatBar.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            ChatTCS(Gen(ChatBar.Text))
            ChatBar.Text = ""
        end
    end)

    table.insert(connections, connection1)
    table.insert(connections, connection2)
end

local function startScript()
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        setupTCSChat()
    else
        setupLegacyChat()
    end
end

local function stopScript()
    for _, connection in ipairs(connections) do
        connection:Disconnect()
    end
    connections = {}
end
wait()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.4.0", HidePremium = false, SaveConfig = save, ConfigFolder ="OrionTest", ScriptIntro = enabled, IntroText = "Vadrifts bypassing society" })

local startTime = tick()

local Tab = Window:MakeTab({
    Name = "Script Setup",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loading"
})
Tab:AddParagraph("Loading..", "Please wait")
Tab:AddParagraph("Quick Tip!","If the script isn't loading, it could be due to your device or executor!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Anthony's%20ACL"))()

local function loadScript()

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({ Name = "vadrifts.byp |  V1.4.0", HidePremium = false, SaveConfig = save, ConfigFolder = "OrionTest", IntroEnabled = false })

    local endTime = tick()
    local loadTime = endTime - startTime
    game.StarterGui:SetCore("SendNotification",
        { Title = "Loaded!", Text = "Succesfully loaded in " ..
        loadTime .. " seconds.", Duration = 5, })

    local Tab = Window:MakeTab({
        Name = "Home",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
local Section = Tab:AddSection({
    Name = "Discord"
})

local playerName = game.Players.LocalPlayer.Name

Tab:AddButton({
    Name = "Welcome " .. playerName .. ", updates n stuff @ our discord",
    Callback = function()
    end
})

Tab:AddButton({
    Name = "Discord | Click To Copy",
    Callback = function()
setclipboard("https://dsc.gg/vadriftz")
    end
}) 

local Section = Tab:AddSection({
    Name = "UI Stuff"
})

  Tab:AddButton({
    Name = "Close Interface",
    Callback = function()
OrionLib:Destroy()
    end
})

Tab:AddButton({
    Name = "Un-hide UI button (when ui closed)",
    Callback = function()
        local Toggle = Instance.new("ScreenGui")
        local UIToggle = Instance.new("TextButton")
        local CloseButton = Instance.new("TextButton")
        Toggle.Name = "Un-Hide"
        Toggle.Parent = game.CoreGui
        UIToggle.Name = "Un-hide"
        UIToggle.Parent = Toggle
        UIToggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        UIToggle.BackgroundTransparency = 0
        UIToggle.Position = UDim2.new(0, 0, 0.454706937, 0)
        UIToggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
        UIToggle.Font = Enum.Font.SourceSans
        UIToggle.Text = "Un-Hide!"
        UIToggle.TextColor3 = Color3.fromRGB(75, 0, 130)
        UIToggle.TextSize = 24.000
        UIToggle.TextXAlignment = Enum.TextXAlignment.Left

        local UserInputService = game:GetService("UserInputService")
        local dragging = false
        local dragStart
        local startPos

        local function updateDragging(input)
            local delta = input.Position - dragStart
            UIToggle.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        UIToggle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = UIToggle.Position
            end
        end)

        UIToggle.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                updateDragging(input)
            end
        end)

        UIToggle.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)

        local function executeScript()
            if OrionLib and OrionLib.Destroy then
                OrionLib:Destroy() -- Reduces lag
            end
            if loadScript then
                loadScript() -- Reopens script
            end
        end

        UIToggle.MouseButton1Click:Connect(executeScript)

        CloseButton.Name = "CloseButton"
        CloseButton.Parent = UIToggle
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.BackgroundTransparency = 0
        CloseButton.Position = UDim2.new(0.8, 0, 0.1, 0)
        CloseButton.Size = UDim2.new(0.2, 0, 0.2, 0)
        CloseButton.Font = Enum.Font.SourceSans
        CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        CloseButton.TextSize = 16
        CloseButton.Text = "X"
        CloseButton.MouseButton1Click:Connect(function()
            UIToggle:Destroy()
        end)
    end
})


local Section = Tab:AddSection({
    Name = "Help"
})

 Tab:AddLabel("Your account must be 13+ for everything to work.")
 Tab:AddLabel("If something gets tagged, say something normal and try again.")
 Tab:AddLabel("Everyone can see the things you say in chat.")
 Tab:AddLabel("For more info go and ask on the Discord")

local Section = Tab:AddSection({
    Name = "Suggested (A-Z)"
})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")
local IsLegacy = (TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService)

local function checkForTag(message)
    local success, isTagged = pcall(function()
        return game:GetService("Chat"):FilterStringForBroadcast(message, game.Players.LocalPlayer)
    end)
    return success and isTagged ~= message
end

local function sendMessage(message)
    if checkForTag(message) then
        OrionLib:MakeNotification({
            Name = "Tag Detection",
            Content = "This bypass might be patched! Try clicking 'Fix Bypasses' and try again!",
            Duration = 5
        })
    else
        if IsLegacy then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        else
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        end
    end
end

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "Are we going to teach about the pussy hole?",
    Callback = function()
sendMessage("Аrеwеgоіngtоtеacһаbоuttһeрuѕѕуһolе?")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "cock and ball torture sex",
    Callback = function()
sendMessage("с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰kаndb󠀕󠀕󠀕alltor󠀕󠀕󠀕turеѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMessage("Е-Rаре")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "eat my shit nigger",
    Callback = function()
sendMessage("ea󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕tm󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕yѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕h󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕tn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ge󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r")
ResetFilter()
    end
})

 Tab:AddLabel("J")

  Tab:AddButton({
    Name = "*jizzles on your face*",
    Callback = function()
sendMessage("*јіzzӏеѕоnуоurface*")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lets go somewhere private so we can fuck",
    Callback = function()
sendMessage("ӏеtѕ gо ѕоmewһеrеprivаtеѕоwесаnfuсk")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lets record lesbian threesome",
    Callback = function()
sendMessage("lets record ӏеѕbіаn t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hrеeѕоm￰￰е")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oil up lil nigga",
    Callback = function()
sendMessage("oi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏu󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕pӏi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ln󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕i󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "im very horny and i will cum inside you hard",
    Callback = function()
sendMessage("imveryһ￰￰￰ο￰￰￰￰rn￰уandiwillс󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕mi󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕nsidеyouhard")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I'm gonna fucking rape you",
    Callback = function()
sendMessage("Ӏ'mgо󠀕󠀕󠀕⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀕󠀕󠀕󠀕nnаf⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥uсkіngr⁥⁥⁥а⁥⁥⁥p⁥⁥⁥ey⁥⁥⁥о⁥⁥⁥u ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm gonna fuck you hard",
    Callback = function()
sendMessage("i'mgоnnаf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uсkуоurһоӏеһаrd")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i fuck children",
    Callback = function()
sendMessage("if󠀖uс󠀖kc󠀖һiӏ󠀖dre󠀖n")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "murder the lgbtq+",
    Callback = function()
sendMessage("murdеrtһеӏgbtq+")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "shitass",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіtа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ")
ResetFilter()
    end
})

Tab:AddParagraph("Join our Discord and suggest YOUR bypass to get it added!","Go to the suggestions channel, and suggest a bypass!")

local Section = Tab:AddSection({
    Name = "Credits"
})

 Tab:AddLabel("[+] Jay. - Development and Bypassing.")
 Tab:AddLabel("[+] BANANAN. - Development.")
 Tab:AddLabel("[+] Dank6s - Script setup")
 Tab:AddLabel("[+] Anthony - Anti-Chat Logger")
 Tab:AddLabel("[+] clickgameplay - Automatic chat bypasser concept")
 Tab:AddLabel("[+] heartasians - Made ResetFilter bypass")
 Tab:AddLabel("[+] OG Vadrifts - Most bypass ideas")
 Tab:AddLabel("[+] Sauce_boss01 - Made some Bypasses")
 Tab:AddLabel("[+] d34dly - Made some Bypasses")
 Tab:AddLabel("[+] N4 - Made some Bypasses")
 Tab:AddLabel("[+] Tyler - Made some Bypasses")

local Section = Tab:AddSection({
    Name = "More Vadrifts Scripts"
})

  Tab:AddButton({
    Name = "Vadrifts Horrific Housing",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/HorrificHousing-v1.02"))()
    end
})

Tab:AddParagraph("Creating more soon..","Making scripts actually work..")

local Tab = Window:MakeTab({
    Name = "Words",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Extra"
})


Tab:AddParagraph("Recommended Games"," Rate My Avatar                                                 Public Bathroom Simlator                                                               White room                                                        Natrual Disaster Survival                                                        Ragdoll Engine                                                 Spray Paint!")

Tab:AddToggle({
    Name = "Automatic Chat Bypasser",
    Default = false,
    Callback = function(value)
        enabled = value
        if enabled then
            startScript()
wait()
Connection.OnInvoke = function(Message)
    Message = Gen(Message)
    Chat(Message)
    ResetFilter()
end
        else
            stopScript()
        end
    end
})

  Tab:AddButton({
    Name = "Stop Tags",
    Callback = function()
wait()
game.StarterGui:SetCore("SendNotification", {Title="Info"; Text="The button prevents tagging; once clicked, it stops tagging the bypasses for a bit."; Duration=5;})
wait()
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abcdeABCDE12345~`|•√?xđ", "All")
wait()
ResetFilter()
    end
})

--[[

░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░░██████╗
░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗██╔════╝
░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║╚█████╗░
░░████╔═████║░██║░░██║██╔══██╗██║░░██║░╚═══██╗
░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝██████╔╝
░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░╚═════╝░
--]]

local Section = Tab:AddSection({
    Name = "lowercase A-Z"
})

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "asshole",
    Callback = function()
sendMessage("аssһоӏе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ass",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anus",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕u￰￰￰￰￰￰￰￰󠀕󠀕ѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "arse ",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰r󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕е")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anal",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏ")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "boner",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕r")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bitches",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bitch",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobies",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰￰￰оbі￰￰￰￰еѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bullshit",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uӏӏѕһіt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bastard ",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аѕtаrd")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "beaner",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰￰￰аn￰￰￰￰er")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bondage",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оndаge")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butthole",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕uttһоӏе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bootyhole",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ооtуһоӏe")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butt",
    Callback = function()
sendMessage("butt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "booty",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оotу")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobs",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰s")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boob",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "breasts",
    Callback = function()
sendMessage("brеаѕtѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "bbc",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "cocaine",
    Callback = function()
sendMessage("сосаіnе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "creampie",
    Callback = function()
sendMessage("сrеаmріе")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cumming",
    Callback = function()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("с￰￰￰￰um￰￰￰￰mіn￰￰￰￰g", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cum",
    Callback = function()
sendMessage("с￰￰￰￰um")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunts",
    Callback = function()
sendMessage("с￰￰￰￰untѕ")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunt",
    Callback = function()
sendMessage("с￰￰￰￰unt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock",
    Callback = function()
sendMessage("с￰￰￰￰осk")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "clit",
    Callback = function()
sendMessage("с￰￰￰￰ӏіt")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cuckold",
    Callback = function()
sendMessage("￰￰с￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰￰с￰￰￰￰￰￰￰￰kold")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "condoms",
    Callback = function()
sendMessage("соndоmѕ")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "condom",
    Callback = function()
sendMessage("соnd￰￰￰￰оm")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "coochies",
    Callback = function()
sendMessage("соосһіеs")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "coochie",
    Callback = function()
sendMessage("соосһіе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cunny",
    Callback = function()
sendMessage("сunnу", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "dumbass",
    Callback = function()
sendMessage("d￰￰￰um￰￰￰bа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dickhead",
    Callback = function()
sendMessage("d￰￰￰￰￰і￰￰￰￰￰c￰￰￰￰￰kһ￰￰￰￰￰еad", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Discord",
    Callback = function()
sendMessage("￰￰ᴅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰ѕ￰￰￰с￰￰￰￰￰￰о￰󠀕󠀕󠀕￰￰￰r￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "doggystyle",
    Callback = function()
sendMessage("d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕оggуѕtуӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dildo",
    Callback = function()
sendMessage("d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іӏdо", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Dick",
    Callback = function()
sendMessage("ᴅ ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰￰￰с￰￰￰￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "damn",
    Callback = function()
sendMessage("￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰n", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "E-Rape",
    Callback = function()
sendMessage("Е-Rаре", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "E-Sex",
    Callback = function()
sendMessage("Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fatass",
    Callback = function()
sendMessage("f￰￰￰а￰￰￰tа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fucked",
    Callback = function()
sendMessage("￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u￰￰￰с￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰k󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕е￰￰￰￰d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fuckers",
    Callback = function()
sendMessage("ꜰu󠀖󠀖с󠀖kе󠀖r󠀖ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Fucker",
    Callback = function()
sendMessage("ꜰuс󠀖kе󠀖r", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Faggot",
    Callback = function()
sendMessage("￰￰ꜰ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰g￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰g󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕о￰￰￰￰t", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fap",
    Callback = function()
sendMessage("f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰а󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕р", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "femboys",
    Callback = function()
sendMessage("fеmbоys", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "femboy",
    Callback = function()
sendMessage("fеmbоy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fanny",
    Callback = function()
sendMessage("fa⁥⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥⁥nу", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "horny",
    Callback = function()
sendMessage("һ￰￰￰ο￰￰￰￰rn￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hitler",
    Callback = function()
sendMessage("һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hentai",
    Callback = function()
sendMessage("һ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еntаі", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hoes",
    Callback = function()
sendMessage("һоеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hoe",
    Callback = function()
sendMessage("һ󠀕󠀕󠀕ое", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "instagram",
    Callback = function()
sendMessage("іnѕtаgrаm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "insta",
    Callback = function()
sendMessage("іnѕta", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "kys",
    Callback = function()
sendMessage("k󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰y󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lmfao",
    Callback = function()
sendMessage("ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕m￰￰f￰￰ао", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lmao",
    Callback = function()
sendMessage("ӏ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕mао", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "motherfucker",
    Callback = function()
sendMessage("mоtһеrfuсkеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "masturbate",
    Callback = function()
sendMessage("m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕ѕ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕b󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕a󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕t󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕e", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "masturbating",
    Callback = function()
sendMessage("m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰і￰￰￰n￰￰￰g", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "molest",
    Callback = function()
sendMessage("m￰￰￰оӏеѕt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "milf",
    Callback = function()
sendMessage("mіlf", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "meth",
    Callback = function()
sendMessage("m￰￰￰еtһ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "Niggas",
    Callback = function()
sendMessage("Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іg￰￰￰￰gаѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "naked",
    Callback = function()
sendMessage("nаkеd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "negro",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕o", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nipples",
    Callback = function()
sendMessage("nіррӏеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nipple",
    Callback = function()
sendMessage("nіррӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nudes",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nude",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕d󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nazi",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "onlyfans",
    Callback = function()
sendMessage("оn󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕ӏуf󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰аn￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "orgasm",
    Callback = function()
sendMessage("orgаѕm", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pedophile",
    Callback = function()
sendMessage("реdорһіӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Pornhub",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һub", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
sendMessage("р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "porn",
    Callback = function()
sendMessage("р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "pussies",
    Callback = function()
sendMessage("р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰і￰￰￰е￰￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "pussy",
    Callback = function()
sendMessage("р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Q")

  Tab:AddButton({
    Name = "queer",
    Callback = function()
sendMessage("quееr", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "retarded",
    Callback = function()
sendMessage("￰￰r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰t￰￰￰￰￰￰аr￰dеd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "rapist",
    Callback = function()
sendMessage("r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аріst", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "rape",
    Callback = function()
sendMessage("r￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аре", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "schlong",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "stripper",
    Callback = function()
sendMessage("ѕtrірреr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "slave",
    Callback = function()
sendMessage("ѕ￰￰￰ӏ￰￰￰а￰￰￰v￰￰￰е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sperm",
    Callback = function()
sendMessage("ѕреrm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "seduce",
    Callback = function()
sendMessage("ѕеduсе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "slut",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shit",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sexy",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sex",
    Callback = function()
sendMessage("ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "titties",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іttіеѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "thots",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоtѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "thot",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һоt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tranny",
    Callback = function()
sendMessage("tr󠀕￰￰￰￰￰￰󠀕￰￰￰￰󠀕а￰￰￰￰￰￰n󠀕￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕￰￰￰n￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀕󠀕у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tits",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "tit",
    Callback = function()
sendMessage("t￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іt", "All")
ResetFilter()
    end
})

 Tab:AddLabel("V")

  Tab:AddButton({
    Name = "virginity",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nitу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "virgins",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰nѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "virgin",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰￰r￰￰￰￰g￰￰￰￰i￰n", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "vagina",
    Callback = function()
sendMessage("v￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аgіnа")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "whore",
    Callback = function()
sendMessage("w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕hоrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "weed",
    Callback = function()
sendMessage("￰￰w￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕е￰￰е￰󠀕󠀕￰￰d")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "xxx",
    Callback = function()
sendMessage("ххх", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "ASS",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ASSHOLE",
    Callback = function()
sendMessage("АЅЅНОLЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ANUS",
    Callback = function()
sendMessage("АΝUЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ARSE",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰R󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ￰￰￰￰￰￰￰￰󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ANAL",
    Callback = function()
sendMessage("А￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰N󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕А￰￰￰￰￰￰￰￰󠀕󠀕L", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "BASTARD",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АЅTАRD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BONDAGE",
    Callback = function()
sendMessage("В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝDAGE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BONER",
    Callback = function()
sendMessage("В￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОΝЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BITCHES",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСНЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BITCH",
    Callback = function()
sendMessage("В￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BLOWJOB",
    Callback = function()
sendMessage("В󠀕󠀕󠀕󠀕󠀕󠀖LОW󠀕󠀕󠀕󠀕󠀕󠀖ЈО󠀕󠀕󠀕󠀕󠀕󠀖В", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BULLSHIT",
    Callback = function()
sendMessage("В󠀖󠀖UL󠀖󠀖LЅН󠀖󠀖ӀТ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOBS",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOBЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOB",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОOB", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BUTTHOLE",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTTНОLЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BUTT",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UTT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BOOTY",
    Callback = function()
sendMessage("ВООТΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BEANER",
    Callback = function()
sendMessage("B￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕANЕR", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "COCAINE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОСА󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀΝ󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUNTS",
    Callback = function()
sendMessage("С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNTS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUNT",
    Callback = function()
sendMessage("С￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT", "All")
ResetFilter()
    end
}) 

  Tab:AddButton({
    Name = "COOCHIES",
    Callback = function()
sendMessage("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COOCHIE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕O󠀕󠀕󠀕󠀕ОСН󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM",
    Callback = function()
sendMessage("СUМ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CREAMPIE",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕󠀕󠀕󠀕󠀕󠀕АМ󠀕󠀕󠀕󠀕󠀕󠀕󠀕PIE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COCK",
    Callback = function()
sendMessage("СОСK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUCKOLD",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀕󠀕С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ΚOLD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUCK",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕󠀕󠀕󠀕ᴜ󠀕󠀕󠀕󠀕󠀕󠀕󠀕С󠀕󠀕󠀕󠀕󠀕󠀕󠀕K", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "DISCORD",
    Callback = function()
sendMessage("DӀЅСОRD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DUMBASS",
    Callback = function()
sendMessage("DUMBАЅЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DILDO",
    Callback = function()
sendMessage("D󠀕󠀕󠀕󠀕Ӏ󠀕󠀕󠀕󠀕L󠀕󠀕󠀕󠀕DО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DICKHEAD",
    Callback = function()
sendMessage("D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚНЕ󠀕󠀕AD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DICK",
    Callback = function()
sendMessage("D￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀСΚ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "DAMN",
    Callback = function()
sendMessage("DАМΝ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "FAGGOT",
    Callback = function()
sendMessage("F󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘A󠀕󠀖󠀗󠀘󠀕󠀖󠀕ԍ󠀖󠀗󠀘󠀖󠀗󠀘󠀘󠀘ԍ󠀖󠀗󠀘󠀖󠀗󠀘О󠀖󠀗󠀘󠀘󠀘󠀖󠀗T", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FATASS",
    Callback = function()
sendMessage("F￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АTА￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰Ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})
  Tab:AddButton({
    Name = "FEMBOYS",
    Callback = function()
sendMessage("FЕМВОΥЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FEMBOY",
    Callback = function()
sendMessage("FЕМВОΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKERS",
    Callback = function()
sendMessage("FᴜСΚERS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKER",
    Callback = function()
sendMessage("FᴜСΚER", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCKED",
    Callback = function()
sendMessage("FᴜСΚED", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCK",
    Callback = function()
sendMessage("FᴜСΚ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "HITLER",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ІТL￰￰￰￰Е￰R", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HENTAI",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HORNY",
    Callback = function()
sendMessage("НОRNY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HOES",
    Callback = function()
sendMessage("НОЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HOE",
    Callback = function()
sendMessage("Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ОЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "KYS",
    Callback = function()
sendMessage("ΚΥЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "LMFAO",
    Callback = function()
sendMessage("LМFАО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LMAO",
    Callback = function()
sendMessage("LМАО", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MOTHERFUCKER",
    Callback = function()
sendMessage("МО󠀕󠀕󠀕󠀖󠀖ТНЕ󠀕󠀕󠀕󠀖󠀖R󠀕󠀕F󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖ᴜCΚЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "MASTURBATE",
    Callback = function()
sendMessage("МАЅТURВАТΕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "METH",
    Callback = function()
sendMessage("M￰￰￰ЕТН", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "NIGGER",
    Callback = function()
sendMessage("NӀԍԍЕR", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIGGA",
    Callback = function()
sendMessage("N󠀕󠀕󠀕󠀕󠀕󠀕Ӏԍ󠀕󠀕󠀕󠀕󠀕󠀕ԍА", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NEGRO",
    Callback = function()
sendMessage("Ν￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕGRО", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAKED",
    Callback = function()
sendMessage("ΝΑKΕD", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NUDES",
    Callback = function()
sendMessage("ΝUDЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NUDE",
    Callback = function()
sendMessage("Ν󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕U󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕Е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAZI",
    Callback = function()
sendMessage("N󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕А󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Z󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Ӏ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIPPLES",
    Callback = function()
sendMessage("Ν󠀕󠀕Ӏ󠀕󠀕󠀕PP󠀕󠀖󠀕L󠀕󠀕󠀕󠀕󠀕󠀖󠀕Е󠀖Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NIPPLE",
    Callback = function()
sendMessage("Ν󠀕󠀕Ӏ󠀕󠀕󠀕PP󠀕󠀖󠀕L󠀕󠀕󠀕󠀕󠀕󠀖󠀕Е󠀖", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "ORGASM",
    Callback = function()
sendMessage("О￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕RGASM", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "PENIS",
    Callback = function()
sendMessage("Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕΝӀЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PUSSIES",
    Callback = function()
sendMessage("Р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅӀЕ￰￰S", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PUSSY",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕󠀖󠀖󠀗󠀕UЅ󠀕󠀕󠀕󠀖󠀖󠀗󠀕S󠀕󠀕󠀖󠀖󠀗󠀕Υ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PORNHUB",
    Callback = function()
sendMessage("Р󠀕󠀕ОR󠀕󠀕N󠀕󠀕Н󠀕󠀕UВ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PORN",
    Callback = function()
sendMessage("РО󠀕󠀕󠀕󠀕󠀕RΝ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "PISS",
    Callback = function()
sendMessage("РӀЅЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "RETARD",
    Callback = function()
sendMessage("󠀕󠀕󠀕R󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕Т󠀕󠀕󠀕󠀕󠀕󠀕󠀕A󠀕󠀕R󠀕󠀕D", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "RAPE",
    Callback = function()
sendMessage("RАРЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "STFU",
    Callback = function()
sendMessage("ЅТFU", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHIT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕НӀT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SLUT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕LUT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SLAVE",
    Callback = function()
sendMessage("ЅLА󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖VE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SEXY",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SEX",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕EХ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "TITTIES",
    Callback = function()
sendMessage("TӀTTӀEЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "TITS",
    Callback = function()
sendMessage("ТIТЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "TIT",
    Callback = function()
sendMessage("TӀT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "THOTS",
    Callback = function()
sendMessage("T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОTS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "THOT",
    Callback = function()
sendMessage("T￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОT", "All")
ResetFilter()
    end
})

 Tab:AddLabel("V")

  Tab:AddButton({
    Name = "VIRGINITY",
    Callback = function()
sendMessage("V￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰R￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰ΝITY", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VIRGINS",
    Callback = function()
sendMessage("V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀNS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VIRGIN",
    Callback = function()
sendMessage("V￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀRGӀN", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "VAGINA",
    Callback = function()
sendMessage("V￰￰￰￰￰￰А￰￰￰￰￰￰￰￰G￰￰￰￰￰￰￰￰Ӏ￰￰￰￰￰￰￰￰￰N￰￰￰￰￰￰￰￰А", "All")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "WHORE",
    Callback = function()
sendMessage("W￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HОRЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "XXX",
    Callback = function()
sendMessage("Х￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ХХ", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "Sentences",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Extra"
})
Tab:AddParagraph("SEX BOT (Beta)","Fuck a player!")

local UsernameTextBox = Tab:AddTextbox({
    Name = "Username/Display Name:",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        local selectedAnimation = tonumber(DropdownValue)

        if selectedAnimation == 1 then
            bangAnimation(Value)
        elseif selectedAnimation == 2 then
            bangAnimation2(Value)
        else
            Orion:MakeNotification({
                Name = "Error",
                Content = "You must select an animation type before entering a username.",
                Time = 5
            })
        end
    end
})

local Dropdown = Tab:AddDropdown({
    Name = "Animation Type",
    Default = "Select Animation",
    Options = {"1", "2"},
    Callback = function(Value)
        DropdownValue = Value
    end
})


local function findPlayer(name)
    local lowerName = string.lower(name)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(player.Name), lowerName) or string.find(string.lower(player.DisplayName), lowerName) then
            return player
        end
    end
    return nil
end

local animationTrack = nil
local animationConnection = nil
local followConnection = nil
local animationTrack2 = nil
local animationConnection2 = nil
local floatConnection = nil
local bangDied = nil
local bang = nil
local bangAnim = nil
local bangLoop = nil

function bangAnimation(playerName)
    local player = findPlayer(playerName)
    if player then

        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        local localHumanoid = localCharacter:FindFirstChildOfClass("Humanoid")

        if localHumanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = localHumanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://5918726674" or "rbxassetid://148840371"
            animationTrack = localHumanoid:LoadAnimation(animation)
            animationTrack:Play()
            animationTrack:AdjustSpeed(10)

            animationConnection = localHumanoid.Died:Connect(stopAnimations)

            followConnection = game:GetService("RunService").Stepped:Connect(function()
                if localCharacter and player.Character then
                    local offset = CFrame.new(0, 0, 0.5)
                    local targetCFrame = player.Character.HumanoidRootPart.CFrame
                    local localCFrame = targetCFrame * offset
                    localCharacter.HumanoidRootPart.CFrame = localCFrame
                end
            end)

          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("С￰￰￰￰￰￰￰М￰￰￰￰￰￰￰ОΝВ￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СНЅUСΚТНАТCО￰￰￰￰￰￰￰СΚ", "All")
           wait(1)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ВЕАGООDН󠀖󠀗󠀘￰￰￰￰О￰￰￰￰ЕFОRРА￰￰￰￰РӀ..YЕ￰￰￰￰АН..ТНАТЅӀТ..", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLYЅН󠀘󠀖󠀗󠀘￰￰￰￰￰ӀТIА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLΥ ЅНӀТТТТ", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ӀАMАBOUTTOBUZZMΥFАTАЅЅСОСK", "All")
           wait(2)
          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*￰￰￰с￰￰￰￰um￰￰￰￰ѕ￰￰￰￰а￰￰￰￰ӏ￰￰￰￰оt￰￰￰*", "All")
          ResetFilter()

            wait(1)
            stopAnimation(animationTrack, animationConnection, followConnection)
        end
    else
        Orion:MakeNotification({
            Name = "Error",
            Content = "Player not found.",
            Time = 5
        })
    end
end

function bangAnimation2(playerName)
    local player = findPlayer(playerName)
    if player then

        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        local localHumanoid = localCharacter:FindFirstChildOfClass("Humanoid")
        if localHumanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = localHumanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://5918726674" or "rbxassetid://148840371"
            animationTrack2 = localHumanoid:LoadAnimation(animation)
            animationTrack2:Play()
            animationTrack2:AdjustSpeed(10)

            animationConnection2 = animationTrack2.KeyframeReached:Connect(function(keyframeName)
                if keyframeName == "End" then
                    local targetHead = player.Character:FindFirstChild("Head")
                    if targetHead then
                        local torsoOffset = localCharacter:FindFirstChild("Torso") or localCharacter:FindFirstChild("UpperTorso")
                        if torsoOffset then
                            local offset = CFrame.new(0, targetHead.Size.Y - torsoOffset.Size.Y + 1, -1) * CFrame.Angles(0, math.pi, 0)
                            localCharacter.HumanoidRootPart.CFrame = targetHead.CFrame * offset
                        end
                    end
                end
            end)

            animationConnection2 = localHumanoid.Died:Connect(stopAnimations)

            floatConnection = game:GetService("RunService").Stepped:Connect(function()
                localCharacter.HumanoidRootPart.Anchored = true
                localCharacter.HumanoidRootPart.CanCollide = false
            end)


          ResetFilter()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ЕАТТНАТРUЅЅΥB￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӀTСН", "All")
          ResetFilter()
           wait(1)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("MMHMYEAH..", "All")
          ResetFilter()
           wait()
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("DADDY", "All")
          ResetFilter()
           wait(3)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLYЅН󠀘󠀖󠀗󠀘￰￰￰￰￰ӀТIА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
          ResetFilter()
           wait(2)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("НОLΥ ЅНӀТТТТ", "All")
          ResetFilter()
           wait(3)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*￰￰￰с￰￰￰￰um￰￰￰￰ѕ￰￰￰￰а￰￰￰￰ӏ￰￰￰￰оt￰￰￰*", "All")
          ResetFilter()

            local followConnection2 = game:GetService("RunService").Stepped:Connect(function()
                if localCharacter and player.Character then
                    local targetPosition = player.Character.HumanoidRootPart.Position
                    local currentPosition = localCharacter.HumanoidRootPart.Position
                    local direction = (targetPosition - currentPosition).Unit
                    local speed = 10 -- Adjust this value to control the speed of following
                    local newPosition = currentPosition + direction * speed * game:GetService("RunService").Stepped:Wait()
                    localCharacter.HumanoidRootPart.CFrame = CFrame.new(newPosition, targetPosition)
                end
            end)

            wait(1)
            stopAnimation2(animationTrack2, animationConnection2, floatConnection, followConnection2)
        end
    else
        Orion:MakeNotification({
            Name = "Error",
            Content = "Player not found.",
            Time = 5
        })
    end
end

function stopAnimations()
    stopAnimation(animationTrack, animationConnection, followConnection)
    stopAnimation2(animationTrack2, animationConnection2, floatConnection, nil)
end

function stopAnimation(track, connection, followConnection)
    if track then
        track:Stop()
        track = nil
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if followConnection then
        followConnection:Disconnect()
        followConnection = nil
    end
end

function stopAnimation2(track, connection, floatConnection, followConnection)
    if track then
        track:Stop()
        track = nil
    end
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if floatConnection then
        floatConnection:Disconnect()
        floatConnection = nil
        local localPlayer = game.Players.LocalPlayer
        local localCharacter = localPlayer.Character
        if localCharacter then
            localCharacter.HumanoidRootPart.Anchored = false
            localCharacter.HumanoidRootPart.CanCollide = true
        end
    end
    if followConnection then
        followConnection:Disconnect()
        followConnection = nil
    end
end

function stopAnimationWithCode(args, speaker)
    if bangDied then
        bangDied:Disconnect()
        bangDied = nil
    end

    if bang then
        bang:Stop()
        bang = nil
    end

    if bangAnim then
        bangAnim:Destroy()
        bangAnim = nil
    end

    if bangLoop then
        bangLoop:Disconnect()
        bangLoop = nil
    end
end

Tab:AddParagraph("IMPORTANT","Put Animation: 1 if you're a Male and put Animation: 2 if you're a Female! (Animation 2 isn't the best right now)")

local Section = Tab:AddSection({
    Name = "lowercase A-Z"
})

--[[

░██████╗███████╗███╗░░██╗████████╗███████╗███╗░░██╗░█████╗░███████╗░██████╗
██╔════╝██╔════╝████╗░██║╚══██╔══╝██╔════╝████╗░██║██╔══██╗██╔════╝██╔════╝
╚█████╗░█████╗░░██╔██╗██║░░░██║░░░█████╗░░██╔██╗██║██║░░╚═╝█████╗░░╚█████╗░
░╚═══██╗██╔══╝░░██║╚████║░░░██║░░░██╔══╝░░██║╚████║██║░░██╗██╔══╝░░░╚═══██╗
██████╔╝███████╗██║░╚███║░░░██║░░░███████╗██║░╚███║╚█████╔╝███████╗██████╔╝
╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚══╝░╚════╝░╚══════╝╚═════╝░
--]]

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "anal sex pls",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхpls", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "anal sex",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰n󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰󠀕󠀕ӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ass sex pls",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})


  Tab:AddButton({
    Name = "ass sex",
    Callback = function()
sendMessage("а￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ￰￰￰￰￰￰￰￰󠀕󠀕ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "Boom cockshot!",
    Callback = function()
sendMessage("В￰￰󠀕󠀕󠀕о￰󠀕󠀕󠀕￰o￰󠀕󠀕󠀕￰m󠀕󠀕󠀕￰￰с￰￰󠀕󠀕󠀕￰￰ос󠀕󠀕󠀕k󠀕󠀕󠀕ѕһ￰￰󠀕󠀕󠀕￰￰оt!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boner alert!",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕onе￰󠀕󠀕󠀕󠀕raӏеrt!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "butt sex",
    Callback = function()
sendMessage("buttѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e￰￰￰х", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big cock",
    Callback = function()
sendMessage("b￰іgс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "boobs or ass?",
    Callback = function()
sendMessage("￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕorа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big ass thighs",
    Callback = function()
sendMessage("b￰іgа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕthіghѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big black cock",
    Callback = function()
sendMessage("b￰іgblackс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "big ass",
    Callback = function()
sendMessage("b￰іgа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Be my wife!",
    Callback = function()
sendMessage("Ве mу wіfе!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "Can I see those cute boobs of yours?",
    Callback = function()
sendMessage("Саn І ѕее thоѕе сutе bооbѕ оf уоurѕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock sucker",
    Callback = function()
sendMessage("с￰￰￰￰о￰￰￰￰с￰￰￰￰k￰￰￰￰￰￰￰￰ѕ￰￰￰￰u￰￰￰￰с￰￰￰￰k￰￰￰￰е￰￰￰￰r", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cum on me please!",
    Callback = function()
sendMessage("С￰￰￰￰u￰￰mo￰￰￰￰￰n￰￰￰￰m￰￰￰ер￰￰￰ӏease!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cum please",
    Callback = function()
sendMessage("с￰￰￰￰u￰￰mр￰￰￰ӏease", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cut yourself.",
    Callback = function()
sendMessage("сutyоurself.", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "child porn",
    Callback = function()
sendMessage("сhildроrn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cock incoming!",
    Callback = function()
sendMessage("C󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥сki⁥⁥󠀕󠀕󠀕󠀕⁥nс⁥⁥󠀕󠀕󠀕󠀕⁥о󠀕󠀕󠀕󠀕m󠀕󠀕󠀕󠀕i󠀕󠀕󠀕󠀕n⁥⁥⁥g!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Cock in bedroom",
    Callback = function()
sendMessage("С󠀕󠀕󠀕󠀕о⁥⁥⁥⁥⁥⁥⁥⁥⁥с󠀕⁥⁥kі⁥󠀕󠀕󠀕󠀕⁥⁥nb⁥⁥е󠀕󠀕󠀕󠀕dr⁥ооm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "cock or boobs",
    Callback = function()
sendMessage("с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰ko￰￰r￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕ?", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "damn you got a long schlong daddy",
    Callback = function()
sendMessage("￰￰d￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕а￰￰￰￰￰￰￰￰￰m￰￰￰nуоugоtаlongѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоngd￰￰￰￰￰￰ad￰￰￰dу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "dirty hoe",
    Callback = function()
sendMessage("dіrtуһое", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fuck yourself",
    Callback = function()
sendMessage("󠀕󠀖󠀗󠀕f󠀖󠀗󠀖󠀗󠀖󠀗󠀖󠀗󠀕󠀕󠀖󠀗󠀖󠀗󠀖󠀗uс󠀕󠀕󠀖󠀗󠀕k󠀖󠀗󠀖󠀗y󠀕󠀕󠀖󠀗󠀖󠀗󠀖󠀗󠀕о󠀖󠀗u󠀖󠀗󠀕󠀖r󠀖󠀗󠀕󠀖󠀗󠀖󠀗󠀖󠀗ѕ󠀖󠀗󠀖󠀕󠀖󠀗󠀖󠀗󠀕󠀕󠀕e󠀖󠀗l󠀖󠀗f", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fuck you",
    Callback = function()
sendMessage("󠀖󠀖󠀗f󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖u󠀖󠀗󠀕󠀖󠀖󠀖󠀗󠀖󠀖󠀖󠀗󠀗󠀕󠀖с󠀖󠀗󠀖󠀖󠀗󠀖󠀖󠀗󠀕󠀖kу󠀖󠀗󠀕󠀖󠀖ou", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fuck off",
    Callback = function()
sendMessage("󠀖󠀖󠀗f󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖u󠀖󠀗󠀕󠀖󠀖󠀖󠀗󠀖󠀖󠀖󠀗󠀗󠀕󠀖с󠀖󠀗󠀖󠀖󠀗󠀖󠀖󠀗󠀕󠀖ko󠀕󠀕󠀗󠀖󠀖󠀗󠀕󠀖f󠀕󠀖󠀖󠀗󠀕󠀖󠀗󠀕󠀗󠀕󠀖󠀗f", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "free porn",
    Callback = function()
sendMessage("frеероrn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fatass hoe",
    Callback = function()
sendMessage("f󠀘󠀕󠀖󠀗аt￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕ￰￰ѕһ⁥⁥⁥⁥⁥⁥⁥⁥⁥󠀘󠀕󠀖󠀗ое", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "fat ass",
    Callback = function()
sendMessage("f󠀘󠀕󠀖󠀗аt ￰￰￰a￰￰￰￰￰￰￰￰￰￰￰￰⁥ѕs", "All")
ResetFilter()
    end
})

 Tab:AddLabel("G")

  Tab:AddButton({
    Name = "go end your own life.",
    Callback = function()
sendMessage("gо еnd уоur оwn lіfе.", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "hail hitler",
    Callback = function()
sendMessage("һ󠀕󠀘󠀖󠀘󠀕󠀕󠀕󠀕а󠀕󠀘󠀖󠀕󠀕і󠀕󠀕ӏһ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtӏеr", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "hardcore sex",
    Callback = function()
sendMessage("һаrdсоrеѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "holy fuck",
    Callback = function()
sendMessage("󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕ӏ󠀕󠀕уf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖k", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "i eat pussy",
    Callback = function()
sendMessage("і еаt р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love minors",
    Callback = function()
sendMessage("і ӏоvе mіnоrѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love you",
    Callback = function()
sendMessage("і ӏоvе уоu", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I love cocks",
    Callback = function()
sendMessage("І ӏоvес￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k󠀕󠀕ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love boobs",
    Callback = function()
sendMessage("і ӏоvе b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о￰￰о￰￰￰￰b￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i like titties",
    Callback = function()
sendMessage("і ӏіkе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "im gonna make you pregnant mommy",
    Callback = function()
sendMessage("іm gоnnа mаkе уоu рrеgnаnt mоmmу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm sexy, and you know it",
    Callback = function()
sendMessage("і'mѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еху,аndуουknοwіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm horny so moan",
    Callback = function()
sendMessage("і'm һ￰￰￰ο￰￰￰￰rn￰у ѕο mοаn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm mad horny",
    Callback = function()
sendMessage("і'm mad һ￰￰￰ο￰￰￰￰rn￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm gonna bang you hard",
    Callback = function()
sendMessage("і'm gοnnа bаng уοu һаrd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so hard rn",
    Callback = function()
sendMessage("і'm ѕо hаrd rn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so wet daddy",
    Callback = function()
sendMessage("і'm ѕо wеt daddy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm so wet",
    Callback = function()
sendMessage("і'm ѕо wеt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i'm craving titties",
    Callback = function()
sendMessage("i'm cravingt￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і￰t￰￰tі￰￰е￰￰ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I would like to see some titties",
    Callback = function()
sendMessage("Ι wοuӏd ӏіkе tο ѕее ѕοmе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i wanna kms",
    Callback = function()
sendMessage("і wаnnа kmѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i wanna smash you",
    Callback = function()
sendMessage("і wаnnа ѕmаѕh уоu", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i want to drink your breasts",
    Callback = function()
sendMessage("іwаnttоdrіnkуоurbrеаѕts", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I do sexy things",
    Callback = function()
sendMessage("І dо ѕеху thіngѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I banged your girl so hard",
    Callback = function()
sendMessage("І bаngеd уоur gіrl ѕо һаrd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i dont give a shit",
    Callback = function()
sendMessage("іdоntgіvеаѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һіt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "i love sex",
    Callback = function()
sendMessage("і ӏоvе ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I'll make you pregnant",
    Callback = function()
sendMessage("І'ӏӏ mаkе уоu рrеgnаnt", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "imagine getting no bitches",
    Callback = function()
sendMessage("іmаgіnе gеttіng nо b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtсһеѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "kill yourself",
    Callback = function()
sendMessage("kіӏlуоurѕеӏf", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "keep moaning",
    Callback = function()
sendMessage("keep mоаning", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "lets do doggy style",
    Callback = function()
sendMessage("ӏеts dо dоggуѕtуӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lets have sex",
    Callback = function()
sendMessage("ӏеts һаve ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "let me squish those titties",
    Callback = function()
sendMessage("ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lgbtq+ is related to autism",
    Callback = function()
sendMessage("ӏgbtq+ іѕ rеӏаtеd tо аutіѕm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "lil n-word",
    Callback = function()
sendMessage("ӏ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕ln󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕а", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "Mind if you let me squish those titties",
    Callback = function()
sendMessage("Mind if you ӏеt mе ѕqυіѕһ tһοѕе tіttіеs", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "my condom fell off!",
    Callback = function()
sendMessage("mусоnd￰￰￰￰оmfеӏӏоff!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Mr Breast is so cool",
    Callback = function()
sendMessage("Мr Вrеаѕt іѕ ѕо сооl", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "my cock is dirty",
    Callback = function()
sendMessage("mу с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k іѕ dirtу", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "make me pregnant",
    Callback = function()
sendMessage("mаkе mе рrеgnаnt", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "Naked boys",
    Callback = function()
sendMessage("Νаkеd Вοуѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Naked girls",
    Callback = function()
sendMessage("Νаkеd Gіrӏѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "nice tits",
    Callback = function()
sendMessage("nісеt￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕іtѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oral sex",
    Callback = function()
sendMessage("оrаӏѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ех", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pussy licker",
    Callback = function()
sendMessage("р󠀕󠀕󠀕u󠀕󠀕󠀕s󠀕󠀕󠀕sу ӏi󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕󠀕󠀕е󠀕󠀕󠀕󠀕󠀕󠀕r", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "rape me",
    Callback = function()
sendMessage("rареmе", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "spank me daddy",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕р󠀕󠀕󠀕а󠀕󠀕󠀕n󠀕󠀕󠀕k󠀕󠀕󠀕 󠀕󠀕󠀕m󠀕󠀕󠀕е󠀕󠀕󠀕 󠀕󠀕󠀕d󠀕󠀕󠀕а󠀕󠀕󠀕d󠀕󠀕󠀕d󠀕󠀕󠀕у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "sex slave",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕е󠀕󠀕󠀕х󠀕󠀕󠀕 󠀕󠀕󠀕ѕ󠀕󠀕󠀕ӏ󠀕󠀕󠀕а󠀕󠀕󠀕v󠀕󠀕󠀕е", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Sweet cock dude",
    Callback = function()
sendMessage("Ѕwееt сосk dudе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
sendMessage("ѕ󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕m󠀕ус￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Sweet cock you got up there",
    Callback = function()
sendMessage("Ѕwееtс￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰kуоugоtuрthеrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shut the fuck up",
    Callback = function()
sendMessage("ѕһutt󠀕󠀕󠀕󠀕h󠀕󠀕e󠀕󠀕󠀕f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖kuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Shut yo goofy ass up",
    Callback = function()
sendMessage("Ѕһutуоgооfуа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "shut yo broke ass up",
    Callback = function()
sendMessage("ѕһutуоbrоkeа￰￰￰￰￰￰󠀕󠀕󠀕󠀕￰￰￰￰￰ѕ󠀕󠀕󠀕󠀕￰￰￰￰￰￰󠀕󠀕󠀕󠀕󠀕ѕuр", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "suck my cock retard",
    Callback = function()
sendMessage("ѕuс󠀖km󠀖󠀖ycо󠀖сkr󠀖еt󠀖аr󠀖d", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "son of a bitch",
    Callback = function()
sendMessage("sonofab󠀕󠀖󠀗󠀘￰￰󠀕󠀖󠀗󠀘і󠀕󠀖󠀗󠀘󠀕󠀖￰￰￰￰￰￰￰￰￰￰￰￰￰￰󠀗󠀘t󠀕￰￰￰￰￰￰￰󠀖󠀗󠀘󠀕󠀖󠀗󠀘с󠀗󠀘󠀗󠀘￰￰￰󠀗󠀘һ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "small penis",
    Callback = function()
sendMessage("smallр￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs", "All")
ResetFilter()
    end
})

 Tab:AddLabel("T")

  Tab:AddButton({
    Name = "Theres cum everywhere!",
    Callback = function()
sendMessage("Тһеrеѕс￰￰￰￰umеvеrуwһеrе!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "that bbc dont play",
    Callback = function()
sendMessage("tһаt￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰сdоntрlау", "All")
ResetFilter()
    end
})

 Tab:AddLabel("U")

  Tab:AddButton({
    Name = "ur gf was craving my raging schlong",
    Callback = function()
sendMessage("ur gf wаѕ сrаvіng mу rаgіng ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕сһӏоng", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ur moms booty is delicious",
    Callback = function()
sendMessage("ur mоmѕ bооtу іѕ dеlісіоuѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("W")

  Tab:AddButton({
    Name = "why is this hard-r not getting whipped?",
    Callback = function()
sendMessage("wһ⁥⁥⁥⁥⁥⁥⁥у⁥⁥і⁥⁥ѕtһ⁥⁥⁥⁥⁥⁥⁥іѕn⁥⁥⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥⁥⁥g⁥⁥ern⁥⁥⁥⁥⁥⁥⁥оtgе󠀕󠀕󠀕󠀕󠀕󠀕t⁥⁥tі󠀕󠀕󠀕⁥⁥󠀕󠀕󠀕n󠀕⁥⁥󠀕gwһ⁥⁥󠀕󠀕󠀕󠀕󠀕󠀕⁥⁥⁥⁥⁥ір⁥⁥⁥⁥⁥⁥⁥реd", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wanna have sex?",
    Callback = function()
sendMessage("wаnnа һаvе ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eх?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wsg bbg you lookin sexy",
    Callback = function()
sendMessage("wѕg bbg уоu lооkіn ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхy", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "what the fuck",
    Callback = function()
sendMessage("󠀕w󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕аtt󠀕󠀕󠀕󠀕h󠀕󠀕e󠀕󠀕󠀕f󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀖󠀗󠀕󠀖󠀕󠀕󠀕󠀖󠀕󠀕󠀕󠀗󠀕󠀖с󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗󠀕󠀖k", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "wanna see some bbc",
    Callback = function()
sendMessage("wаnnа sее sоmе ￰￰b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b￰￰￰￰с", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Y")

  Tab:AddButton({
    Name = "you like to rape and suck black oiled up men",
    Callback = function()
sendMessage("уоu lіkе tо rаре аnd ѕuсk blасk оіlеd uр mеn", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "yo my shaft is hard, mind jerking it?",
    Callback = function()
sendMessage("уо mу ѕhаft іѕ һаrd, mіnd јеrkіng іt?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're such a whore",
    Callback = function()
sendMessage("уоu'rе ѕuсһ а wһоrе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're a pedophile",
    Callback = function()
sendMessage("уоu'rе а реdорһіӏе", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you pathetic slut",
    Callback = function()
sendMessage("уоu раtһеtіс ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏut", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're a pussy",
    Callback = function()
sendMessage("уоu'rе а р￰￰￰u￰￰￰ѕ￰￰￰ѕ￰￰￰у", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "you're so sexy",
    Callback = function()
sendMessage("уоu'rе ѕо ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕eхy", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Uppercase/Capital A-Z"
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "BE MY WIFE!",
    Callback = function()
sendMessage("ВЕ MΥ WӀFЕ!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY LATINAS",
    Callback = function()
sendMessage("ВІG ВООТΥ LАТІΝАЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY ASIANS",
    Callback = function()
sendMessage("ВІG ВООТΥ АЅІАΝЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY FEMBOYS",
    Callback = function()
sendMessage("ВІG ВООТΥ FЕMBОΥЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOTY",
    Callback = function()
sendMessage("ВІG ВООТΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "BIG BOOBS",
    Callback = function()
sendMessage("BIG ВООВS", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "CAN I PISS INSIDE YOUR BUTTHOLE",
    Callback = function()
sendMessage("САNӀРӀЅЅӀNЅІDЕΥОURBUTTНОLЕ?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CAN I PISS ON YOU?",
    Callback = function()
sendMessage("САNӀРӀЅЅОNΥОU?", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "COCK IN BEDROOM",
    Callback = function()
sendMessage("С￰￰󠀕󠀕󠀕￰￰О￰С󠀕￰￰￰󠀕󠀕￰KӀ￰￰NBE￰￰DRО￰￰OМ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM ON ME",
    Callback = function()
sendMessage("СUМОΝМЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "CUM ON MY FACE",
    Callback = function()
sendMessage("СUMОNMΥFАСЕ!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("D")

  Tab:AddButton({
    Name = "DO YOU HAVE TITS?",
    Callback = function()
sendMessage("DО ΥОU НАVЕ TӀTЅ?", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "EAT PUSSY BITCH",
    Callback = function()
sendMessage("ЕАTР￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅΥВ￰￰￰￰￰￰￰I￰￰￰￰￰￰Т￰￰￰￰￰￰СН", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "FATASS HOE",
    Callback = function()
sendMessage("FАTАЅЅ НОE", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FAT ASS",
    Callback = function()
sendMessage("F￰￰󠀕󠀕󠀕￰АTА￰￰󠀕󠀕󠀕￰ЅЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FREE HENTAI",
    Callback = function()
sendMessage("FREE Н￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕNТАІ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "FUCK YOU",
    Callback = function()
sendMessage("FᴜСΚYОᴜ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "HELP! THERE'S A COCK IN MY ASS",
    Callback = function()
sendMessage("HЕLР!THЕRЕЅАСОСKӀNMΥА￰￰Ѕ￰￰Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "HELP! THERE'S A HOE CHASING ME",
    Callback = function()
sendMessage("НЕLР! ТНЕRЕS А НОЕ СНАSING МЕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("I")

  Tab:AddButton({
    Name = "I AM ABOUT TO CUM",
    Callback = function()
sendMessage("IА󠀕󠀖󠀗МАВ󠀕󠀖󠀗OU￰￰￰TT󠀕󠀖󠀗OС￰󠀕󠀖󠀗󠀕󠀖󠀗￰￰U￰￰￰М", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I EAT PUSSY",
    Callback = function()
sendMessage("Ӏ ЕАТ РUЅЅҮ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I PREFER PUSSY",
    Callback = function()
sendMessage("ӀРRЕFЕRР￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕US￰￰￰￰ЅΥ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I HAVE A MASSIVE COCK",
    Callback = function()
sendMessage("ӀHAVEAMASЅIVEСОСK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "I HAD AWESOME SEX WITH UR MOM!!!!",
    Callback = function()
sendMessage("ӀHADAWЕЅОMЕЅ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕХWӀTHURMОM!!!!", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "ILL MAKE YOU PREGNANT",
    Callback = function()
sendMessage("ILL МΑKΕ ΥОU РRΕGΝΑΝТ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "LET ME SQUICH THOSE TITTIES",
    Callback = function()
sendMessage("LЕТМЕЅQUІЅНТНОЅЕТІТТІЕЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LETS HAVE SEX",
    Callback = function()
sendMessage("LETЅ HАVE Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ЕХ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "LET'S FUCK",
    Callback = function()
sendMessage("L￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ETSF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MY CONDOM FELL OFF!",
    Callback = function()
sendMessage("MΥ СОNDОM FЕLL ОFF!", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "NAKED GIRLS",
    Callback = function()
sendMessage("ΝΑKΕDGIRLЅ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "NAKED BOYS",
    Callback = function()
sendMessage("ΝАΚЕD ВОΥЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "oh my god, not this DUMBASS",
    Callback = function()
sendMessage("oh my god, not this DUМВ АЅЅ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "PUT YOUR COCK IN MY ASS",
    Callback = function()
sendMessage("РUTΥОURСОСKӀNMΥА￰￰Ѕ￰￰Ѕ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "STRAIGHT POWER MOTHERFUCKERS",
    Callback = function()
sendMessage("STRAIGHTPOWERM￰￰￰￰￰O￰￰￰￰￰T￰￰￰￰￰H￰￰￰￰￰E￰￰￰￰￰R￰￰￰￰￰F￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰Κ￰￰￰￰￰￰￰￰E￰￰￰￰￰￰￰RS", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SUCK MY COCK",
    Callback = function()
sendMessage("S󠀕󠀖󠀗UС󠀕󠀖󠀗KМ󠀕󠀖󠀗ΥС󠀕󠀖󠀗O⁥⁥⁥⁥⁥⁥󠀕󠀖󠀗󠀕󠀖󠀗⁥⁥⁥⁥⁥СK", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT THE FUCK UP",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTTHEF￰￰￰￰￰￰UС￰￰￰￰￰￰￰￰ΚUР", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP FAGGOT",
    Callback = function()
sendMessage("󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖S󠀕󠀖󠀗󠀕󠀖H󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖UTU󠀗󠀕PF󠀗󠀕󠀖󠀗󠀕󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕󠀖󠀗󠀕A󠀗󠀕G󠀕󠀖󠀗󠀕󠀖󠀗󠀗󠀕󠀖󠀗GO󠀗󠀕T", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP CUNT",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTUPС￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕UNT", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHUT UP HOE",
    Callback = function()
sendMessage("Ѕ￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕HUTUPНОЕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SHAKE THAT ASS",
    Callback = function()
sendMessage("ЅHAKEТН󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕АТА󠀕󠀕󠀕󠀕Ѕ󠀕󠀕󠀕󠀕Ѕ", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "SON OF A BITCH",
    Callback = function()
sendMessage("󠀕󠀕󠀕󠀕Ѕ󠀕󠀕󠀕󠀕O󠀖󠀗󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀘󠀕󠀖NO󠀖󠀕󠀕󠀕󠀕󠀗󠀘󠀕󠀕󠀕󠀕󠀕󠀖FA󠀗󠀘󠀕󠀕󠀕󠀕󠀕󠀖В󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀗󠀕󠀕󠀕󠀕󠀘󠀕󠀖󠀕󠀕󠀕I󠀗󠀘󠀕󠀖󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕T󠀕󠀕󠀕󠀕C󠀗󠀕󠀕󠀕󠀕󠀘󠀕󠀖H", "All")
ResetFilter()
    end
})

 Tab:AddLabel("Y")

  Tab:AddButton({
    Name = "YOU ARE SO ASS AT THIS GAME",
    Callback = function()
sendMessage("ΥОUАRЕЅО А￰￰￰Ѕ￰￰￰Ѕ АТTHIЅGАМЕ", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "RolePlay",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "RP A-Z"
})

--[[

██████╗░░█████╗░██╗░░░░░███████╗██████╗░██╗░░░░░░█████╗░██╗░░░██╗
██╔══██╗██╔══██╗██║░░░░░██╔════╝██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝
██████╔╝██║░░██║██║░░░░░█████╗░░██████╔╝██║░░░░░███████║░╚████╔╝░
██╔══██╗██║░░██║██║░░░░░██╔══╝░░██╔═══╝░██║░░░░░██╔══██║░░╚██╔╝░░
██║░░██║╚█████╔╝███████╗███████╗██║░░░░░███████╗██║░░██║░░░██║░░░
╚═╝░░╚═╝░╚════╝░╚══════╝╚══════╝╚═╝░░░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░
--]]

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "аh уеѕ~ *moans* уеѕ һаrdеr~",
    Callback = function()
sendMessage("аh уеѕ~ *m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕о󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ѕ* уеѕ һаrdеr~", "All")
ResetFilter()
    end
})

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "*bites your cock*",
    Callback = function()
sendMessage("*bіtеѕ уоur с￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("C")

  Tab:AddButton({
    Name = "*cums*",
    Callback = function()
sendMessage("*󠀕󠀕󠀕󠀕󠀕cu󠀕󠀕󠀕󠀕󠀕m󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕s󠀕󠀕󠀕󠀕*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("J")

  Tab:AddButton({
    Name = "*jizzles on your face*",
    Callback = function()
sendMessage("*јіzzӏеѕоnуоurface*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("L")

  Tab:AddButton({
    Name = "*looks under skirt* wow nice balls bro",
    Callback = function()
sendMessage("*ӏооkѕ undеr ѕkіrt* wоw nісе bаlӏѕ brо", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "*masturbates*",
    Callback = function()
sendMessage("*m￰￰￰а￰￰￰ѕ￰￰￰t￰￰￰u￰￰￰r￰￰￰b￰￰￰а￰￰￰t￰￰￰e￰￰￰ѕ*", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "*moans*",
    Callback = function()
sendMessage("*moa󠀖󠀖nѕ󠀖*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("N")

  Tab:AddButton({
    Name = "nice balls *slaps them*",
    Callback = function()
sendMessage("*nісеbаӏӏѕ*sӏарstһеm*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "*rapes*",
    Callback = function()
sendMessage("r ареs*", "All")
ResetFilter()
    end
})

 Tab:AddLabel("S")

  Tab:AddButton({
    Name = "*sucks cock*",
    Callback = function()
sendMessage("*󠀖󠀖ѕuсksс󠀖o󠀖сk*", "All")
ResetFilter()
    end
})


local Tab = Window:MakeTab({
    Name = "NSFW Websites",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Safe For Work websites"
})

--[[

░██╗░░░░░░░██╗███████╗██████╗░░██████╗██╗████████╗███████╗░██████╗
░██║░░██╗░░██║██╔════╝██╔══██╗██╔════╝██║╚══██╔══╝██╔════╝██╔════╝
░╚██╗████╗██╔╝█████╗░░██████╦╝╚█████╗░██║░░░██║░░░█████╗░░╚█████╗░
░░████╔═████║░██╔══╝░░██╔══██╗░╚═══██╗██║░░░██║░░░██╔══╝░░░╚═══██╗
░░╚██╔╝░╚██╔╝░███████╗██████╦╝██████╔╝██║░░░██║░░░███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═════╝░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░
--]]

 Tab:AddLabel("B")

  Tab:AddButton({
    Name = "blacked.com",
    Callback = function()
sendMessage("b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏасkеd.соm", "All")
ResetFilter()
    end
})

 Tab:AddLabel("O")

  Tab:AddButton({
    Name = "onlyfans.com",
    Callback = function()
sendMessage("o󠀖n󠀖ӏyf󠀖an󠀖󠀖󠀖ѕ.󠀖󠀖󠀖со󠀖󠀖󠀖󠀖m", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P")

  Tab:AddButton({
    Name = "pornhub.com",
    Callback = function()
sendMessage("р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b.сom", "All")
ResetFilter()
    end
})

 Tab:AddLabel("R")

  Tab:AddButton({
    Name = "rule34.xxx",
    Callback = function()
sendMessage("r󠀕󠀕󠀕u󠀕󠀕󠀕ӏ󠀕󠀕󠀕е3󠀕󠀕󠀕4.ххх", "All")
ResetFilter()
    end
})

 Tab:AddLabel("E")

  Tab:AddButton({
    Name = "e621.net",
    Callback = function()
sendMessage("е󠀕󠀕󠀕6󠀕󠀕󠀕2󠀕󠀕󠀕1󠀕󠀕󠀕.n󠀕󠀕󠀕е󠀕󠀕󠀕t", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X")

  Tab:AddButton({
    Name = "xvideos.com",
    Callback = function()
sendMessage("х󠀗󠀕󠀕󠀕󠀕󠀕󠀖󠀖󠀗vid󠀕󠀕󠀕󠀕е󠀕󠀕󠀕󠀕o󠀗󠀕󠀕󠀕󠀕ѕ󠀕󠀕󠀕.󠀕󠀕󠀕с󠀕о󠀕m", "All")
ResetFilter()
    end
})

 Tab:AddLabel("P (Capitals)")

  Tab:AddButton({
    Name = "PORNHUB.COM",
    Callback = function()
sendMessage("Р󠀕󠀕󠀕О󠀕󠀕󠀕R󠀕󠀕󠀕Ν󠀕󠀕󠀕Н󠀕󠀕󠀕U󠀕󠀕󠀕В.СOM", "All")
ResetFilter()
    end
})

 Tab:AddLabel("X (Capitals)")

  Tab:AddButton({
    Name = "XVIDEOS.COM",
    Callback = function()
sendMessage("Х󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀖󠀕VӀ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕D󠀕󠀕󠀕󠀕󠀕󠀕Е󠀕󠀕󠀕󠀕󠀕󠀕ОЅ.СOM", "All")
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Full Links"
})

 Tab:AddLabel("H")

  Tab:AddButton({
    Name = "https://blacked.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/bӏac󠀖kеd󠀖.соm", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "https://onlyfans.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/оn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏуf󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕аn󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ѕ.сom", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "https://pornhub.com",
    Callback = function()
sendMessage("ht󠀖tp󠀖s:/󠀖/р󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ο󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕r󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕һ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕b.сom", "All")
ResetFilter()
    end
})

 Tab:AddLabel("M")

  Tab:AddButton({
    Name = "MASTURBATING TO HTTPS://PORNHUB.COM",
    Callback = function()
sendMessage("МА󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗Т󠀕󠀖󠀗󠀘󠀕󠀖󠀗󠀘󠀕󠀖󠀗UR󠀘ВАТӀΝGTOHТ󠀕󠀕󠀕󠀕ТРЅ󠀕󠀕󠀕󠀕:/󠀕󠀖󠀗󠀘󠀕/РО󠀕󠀕RΝ󠀕󠀕НU󠀕󠀖󠀗В.C󠀕󠀖󠀗󠀘OM", "All")
ResetFilter()
    end
})

local Tab = Window:MakeTab({
    Name = "NOT LEGIT",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Not Legit A-Z"
})

--[[

███╗░░██╗░█████╗░████████╗  ██╗░░░░░███████╗░██████╗░██╗████████╗
████╗░██║██╔══██╗╚══██╔══╝  ██║░░░░░██╔════╝██╔════╝░██║╚══██╔══╝
██╔██╗██║██║░░██║░░░██║░░░  ██║░░░░░█████╗░░██║░░██╗░██║░░░██║░░░
██║╚████║██║░░██║░░░██║░░░  ██║░░░░░██╔══╝░░██║░░╚██╗██║░░░██║░░░
██║░╚███║╚█████╔╝░░░██║░░░  ███████╗███████╗╚██████╔╝██║░░░██║░░░
╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░  ╚══════╝╚══════╝░╚═════╝░╚═╝░░░╚═╝░░░
--]]

Tab:AddParagraph("Note","'NOT LEGIT' on this script means that the bypasses DON'T look like it was said normally")

 Tab:AddLabel("A")

  Tab:AddButton({
    Name = "a hard r",
    Callback = function()
sendMessage("п󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕g󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕e󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕г", "All")
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "a lil n word",
    Callback = function()
sendMessage("n󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕і󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ɡ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ɡ󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕а", "All")
ResetFilter()
    end
})

 Tab:AddLabel("F")

  Tab:AddButton({
    Name = "fuck",
    Callback = function()
sendMessage("f￰￰￰￰￰󠀕󠀕￰￰￰￰￰ụç󠀕󠀕ķ", "All")
ResetFilter()
    end
})

 Tab:AddLabel("K")

  Tab:AddButton({
    Name = "KKK",
    Callback = function()
sendMessage("ККК", "All")
ResetFilter()
    end
})


local Tab = Window:MakeTab({
    Name = "Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[

░██████╗░░█████╗░███╗░░░███╗███████╗░██████╗
██╔════╝░██╔══██╗████╗░████║██╔════╝██╔════╝
██║░░██╗░███████║██╔████╔██║█████╗░░╚█████╗░
██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░░╚═══██╗
╚██████╔╝██║░░██║██║░╚═╝░██║███████╗██████╔╝
░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═════╝░
--]]

local Section = Tab:AddSection({
    Name = "Rate My Avatar (A-Z)"
})
 Tab:AddLabel("Change Booth's text")

  Tab:AddButton({
    Name = "blowjob",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="b￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕ӏоwјob",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "horny",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="һ󠀖󠀗󠀕ο󠀖󠀗󠀕󠀖rn󠀖у",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "penis",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="р￰󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕󠀕еnіs",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "suck my cock",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="ѕ󠀕󠀕󠀕󠀕󠀕u󠀕󠀕󠀕с󠀕󠀕󠀕k󠀕m󠀕ус￰￰󠀕󠀕󠀕￰￰о￰с󠀕￰￰￰󠀕󠀕￰k",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})

  Tab:AddButton({
    Name = "E-Sex",
    Callback = function()
			local k={[1]="Update",[2]={["DescriptionText"]="Е￰￰￰-￰￰￰Ѕ￰￰￰е￰￰￰х",["ImageId"]=0}}
			game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(k))
    end
})


local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[

███╗░░░███╗██╗░██████╗░█████╗░
████╗░████║██║██╔════╝██╔══██╗
██╔████╔██║██║╚█████╗░██║░░╚═╝
██║╚██╔╝██║██║░╚═══██╗██║░░██╗
██║░╚═╝░██║██║██████╔╝╚█████╔╝
╚═╝░░░░░╚═╝╚═╝╚═════╝░░╚════╝░
--]]

local Section = Tab:AddSection({
    Name = "Chat"
})

  Tab:AddButton({
    Name = "Chat a huge annoying blank text chat bubble",
    Callback = function()
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("                               󠀖")
else
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("                                                                                                                                                                                                       󠀖", "All")
end
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Chat a long annoying blank text chat bubble",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/WPHVj8Lj"))()
ResetFilter()
    end
})

  Tab:AddButton({
    Name = "Chat our dsc link",
    Callback = function()
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("ht󠀖tp󠀖s:/󠀖/d󠀖󠀖󠀖󠀖ѕ󠀖󠀖с.󠀖󠀖󠀖g󠀖g󠀖/󠀖󠀖󠀖󠀖vаdrіftz")
else
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ht󠀖tp󠀖s:/󠀖/d󠀖󠀖󠀖󠀖ѕ󠀖󠀖с.󠀖󠀖󠀖g󠀖g󠀖/󠀖󠀖󠀖󠀖vаdrіftz", "All")
end
ResetFilter()
    end
})

local Section = Tab:AddSection({
    Name = "Admin"
})

  Tab:AddButton({
    Name = "Infinite yield",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

  Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end
})

Tab:AddParagraph("Hello :)","its The End, for now..")

OrionLib:Init()
end
loadScript()

OrionLib:Init()
end

local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    runMobileScript()
else
    runPCScript()
end
