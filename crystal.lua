-- Yes, yes.. its Simplebypass, but significantly better --

pcall(function()loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'))()end)

local function initui()
	-- Instances: 29 | Scripts: 0 | Modules: 0
	local G2L = {};

	-- StarterGui.SimpleBypass
	G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
	G2L["1"]["Name"] = [[SimpleBypass]];

	-- StarterGui.SimpleBypass.UI
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 47, 0, 83);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.10000000149011612, 0, 0.49300000071525574, 0);
	G2L["2"]["Name"] = [[UI]];

	-- StarterGui.SimpleBypass.UI.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(0, 17);

	-- StarterGui.SimpleBypass.UI.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["2"]);
	G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["Thickness"] = 4;
	G2L["4"]["Transparency"] = 0.800000011920929;

	-- StarterGui.SimpleBypass.UI.logo
	G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["5"]["Image"] = [[rbxassetid://18481362660]];
	G2L["5"]["Size"] = UDim2.new(0, 27, 0, 27);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Name"] = [[logo]];
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Position"] = UDim2.new(0.5, 0, 0, 10);

	-- StarterGui.SimpleBypass.UI.maximize
	G2L["6"] = Instance.new("ImageButton", G2L["2"]);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["AutoButtonColor"] = false;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["6"]["Size"] = UDim2.new(0, 37, 0, 37);
	G2L["6"]["Name"] = [[maximize]];
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Position"] = UDim2.new(0.5, 0, 1, -42);

	-- StarterGui.SimpleBypass.UI.maximize.UICorner
	G2L["7"] = Instance.new("UICorner", G2L["6"]);
	G2L["7"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.SimpleBypass.UI.maximize.ImageLabel
	G2L["8"] = Instance.new("ImageLabel", G2L["6"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["8"]["Image"] = [[rbxassetid://7072718683]];
	G2L["8"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["BackgroundTransparency"] = 1;
	G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar
	G2L["a"] = Instance.new("Frame", G2L["2"]);
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["a"]["BackgroundTransparency"] = 1;
	G2L["a"]["Size"] = UDim2.new(1, -30, 0, 30);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Position"] = UDim2.new(0.5, 0, 0, 30);
	G2L["a"]["Visible"] = false;
	G2L["a"]["Name"] = [[upperbar]];

	-- StarterGui.SimpleBypass.UI.upperbar.logo
	G2L["b"] = Instance.new("ImageLabel", G2L["a"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["b"]["Image"] = [[rbxassetid://18481362660]];
	G2L["b"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Name"] = [[logo]];
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Position"] = UDim2.new(0, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.header
	G2L["c"] = Instance.new("TextLabel", G2L["a"]);
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["c"]["TextSize"] = 15;
	G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Size"] = UDim2.new(0.8493150472640991, -33, 1, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Text"] = [[Crystal Meth]];
	G2L["c"]["Name"] = [[header]];
	G2L["c"]["BackgroundTransparency"] = 1;
	G2L["c"]["Position"] = UDim2.new(0, 33, 0, 2);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize
	G2L["d"] = Instance.new("ImageButton", G2L["a"]);
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["AutoButtonColor"] = false;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["d"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["d"]["Name"] = [[minimize]];
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["Position"] = UDim2.new(1, -30, 0, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize.UICorner
	G2L["e"] = Instance.new("UICorner", G2L["d"]);
	G2L["e"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize.ImageLabel
	G2L["f"] = Instance.new("ImageLabel", G2L["d"]);
	G2L["f"]["BorderSizePixel"] = 0;
	G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["f"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["f"]["Image"] = [[rbxassetid://7072719125]];
	G2L["f"]["Size"] = UDim2.new(0.6399999856948853, 0, 0.6399999856948853, 0);
	G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["f"]["BackgroundTransparency"] = 1;
	G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.settings
	G2L["10"] = Instance.new("ImageButton", G2L["a"]);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["AutoButtonColor"] = false;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["10"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["10"]["Name"] = [[settings]];
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["Position"] = UDim2.new(1, -65, 0, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.settings.UICorner
	G2L["11"] = Instance.new("UICorner", G2L["10"]);
	G2L["11"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.SimpleBypass.UI.upperbar.settings.ImageLabel
	G2L["12"] = Instance.new("ImageLabel", G2L["10"]);
	G2L["12"]["BorderSizePixel"] = 0;
	G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["12"]["Image"] = [[rbxassetid://18151015259]];
	G2L["12"]["Size"] = UDim2.new(0.6399999856948853, 0, 0.6399999856948853, 0);
	G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["12"]["BackgroundTransparency"] = 1;
	G2L["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.bar
	G2L["13"] = Instance.new("Frame", G2L["2"]);
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["13"]["Size"] = UDim2.new(1, -30, 0, 40);
	G2L["13"]["ClipsDescendants"] = true;
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["Position"] = UDim2.new(0.5, 0, 1, -50);
	G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	G2L["13"]["Visible"] = false;
	G2L["13"]["Name"] = [[bar]];

	-- StarterGui.SimpleBypass.UI.bar.UICorner
	G2L["14"] = Instance.new("UICorner", G2L["13"]);

	-- StarterGui.SimpleBypass.UI.bar.messagebox
	G2L["15"] = Instance.new("TextBox", G2L["13"]);
	G2L["15"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
	G2L["15"]["BorderSizePixel"] = 0;
	G2L["15"]["TextSize"] = 15;
	G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["15"]["BackgroundTransparency"] = 1;
	G2L["15"]["PlaceholderText"] = [[Message here]];
	G2L["15"]["Size"] = UDim2.new(1, -82, 1, 0);
	G2L["15"]["ClipsDescendants"] = true;
	G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["15"]["Text"] = [[]];
	G2L["15"]["Name"] = [[messagebox]];
	G2L["15"]["ClearTextOnFocus"] = false;

	-- StarterGui.SimpleBypass.UI.bar.messagebox.UIPadding
	G2L["16"] = Instance.new("UIPadding", G2L["15"]);
	G2L["16"]["PaddingTop"] = UDim.new(0, 6);
	G2L["16"]["PaddingBottom"] = UDim.new(0, 6);
	G2L["16"]["PaddingLeft"] = UDim.new(0, 10);

	-- StarterGui.SimpleBypass.UI.bar.send
	G2L["17"] = Instance.new("ImageButton", G2L["13"]);
	G2L["17"]["BorderSizePixel"] = 0;
	G2L["17"]["AutoButtonColor"] = false;
	G2L["17"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["17"]["Size"] = UDim2.new(0, 40, 0, 40);
	G2L["17"]["Name"] = [[send]];
	G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["17"]["Position"] = UDim2.new(1, -40, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.send.UICorner
	G2L["18"] = Instance.new("UICorner", G2L["17"]);

	-- StarterGui.SimpleBypass.UI.bar.send.Frame
	G2L["19"] = Instance.new("Frame", G2L["17"]);
	G2L["19"]["BorderSizePixel"] = 0;
	G2L["19"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["19"]["Size"] = UDim2.new(0, 4, 1, 0);
	G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.send.ImageLabel
	G2L["1a"] = Instance.new("ImageLabel", G2L["17"]);
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["ImageColor3"] = Color3.fromRGB(131, 131, 131);
	G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["1a"]["Image"] = [[rbxassetid://18150985605]];
	G2L["1a"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["BackgroundTransparency"] = 1;
	G2L["1a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.bar.clear
	G2L["1b"] = Instance.new("ImageButton", G2L["13"]);
	G2L["1b"]["BorderSizePixel"] = 0;
	G2L["1b"]["AutoButtonColor"] = false;
	G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["1b"]["Size"] = UDim2.new(0, 40, 0, 40);
	G2L["1b"]["Name"] = [[clear]];
	G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1b"]["Position"] = UDim2.new(1, -80, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.clear.ImageLabel
	G2L["1c"] = Instance.new("ImageLabel", G2L["1b"]);
	G2L["1c"]["BorderSizePixel"] = 0;
	G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1c"]["ImageColor3"] = Color3.fromRGB(131, 131, 131);
	G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["1c"]["Image"] = [[rbxassetid://17746544452]];
	G2L["1c"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1c"]["BackgroundTransparency"] = 1;
	G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	return G2L["1"];
end
spawn(function()
	local function a()
		local ts = game:GetService("TweenService")
		local ti = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local ui = initui().UI

		local upperbar = ui.upperbar
		local bar = ui.bar
		local max = ui.maximize
		local mini = upperbar.minimize
		local settings = upperbar.settings
		local send = bar.send
		local clearlogs = bar.clear
		local box = bar.messagebox

		-- Animations setup
		local function expand()
			ts:Create(ui, ti, { Size = UDim2.new(0, 322, 0, 109) }):Play()
			ts:Create(ui, ti, { Position = UDim2.new(ui.Position.X.Scale, ui.Position.X.Offset + 140, ui.Position.Y.Scale, ui.Position.Y.Offset) }):Play()
			upperbar.Visible = true
			bar.Visible = true
			max.Visible = false
			ui.logo.Visible = false
		end

		local function minimize()
			ts:Create(ui, ti, { Size = UDim2.new(0, 47, 0, 83) }):Play()
			ts:Create(ui, ti, { Position = UDim2.new(ui.Position.X.Scale, ui.Position.X.Offset - 140, ui.Position.Y.Scale, ui.Position.Y.Offset) }):Play()
			upperbar.Visible = false
			bar.Visible = false
			max.Visible = true
			ui.logo.Visible = true
		end

		max.MouseButton1Click:Connect(expand)
		mini.MouseButton1Click:Connect(minimize)

		-- Event handling for settings, clearlogs, send button interactions
		settings.MouseEnter:Connect(function()
			settings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		end)
		settings.MouseLeave:Connect(function()
			settings.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		end)

		clearlogs.MouseEnter:Connect(function()
			clearlogs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			clearlogs.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end)
		clearlogs.MouseLeave:Connect(function()
			clearlogs.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			clearlogs.ImageLabel.ImageColor3 = Color3.fromRGB(131,131,131)
		end)

		send.MouseEnter:Connect(function()
			send.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			send.Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		end)
		send.MouseLeave:Connect(function()
			send.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			send.Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		end)

		-- Dragging functionality
		local function update(input)
			local delta = input.Position - dragStart
			ui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		ui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = ui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		ui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)

		-- Main functionality (assuming this is where you have your main logic)
		pcall(function()
			local tcs = game:GetService("TextChatService")
			local chat = tcs.ChatInputBarConfiguration.TargetTextChannel

			local letters = { -- usercreations type shit
				["A"] = "\208\144", ["a"] = "\208\176",
				["B"] = "Β", ["b"] = "b",
				["C"] = "С", ["c"] = "\209\129",
				["D"] = "D", ["d"] = "d",
				["E"] = "Ε", ["e"] = "\208\181",
				["F"] = "Ғ", ["f"] = "f",
				["G"] = "ԍ", ["g"] = "g",
				["H"] = "Η", ["h"] = "\210\187",
				["I"] = "I", ["i"] = "\209\150",
				["J"] = "Ј", ["j"] = "ј",
				["K"] = "Κ", ["k"] = "k",
				["L"] = "L", ["l"] = "\211\143",
				["M"] = "Μ", ["m"] = "m",
				["N"] = "Ν", ["n"] = "n",
				["O"] = "Ο", ["o"] = "\208\190",
				["P"] = "Ρ", ["p"] = "р",
				["Q"] = "Ԛ", ["q"] = "ԛ",
				["R"] = "R", ["r"] = "r",
				["S"] = "Ṡ", ["s"] = "ѕ",
				["T"] = "Τ", ["t"] = "t",
				["U"] = "ᴜ", ["u"] = "u",
				["V"] = "Ѵ", ["v"] = "ѵ",
				["W"] = "W", ["w"] = "w",
				["X"] = "Χ", ["x"] = "\209\133",
				["Y"] = "Υ", ["y"] = "\209\131",
				["Z"] = "Ζ", ["z"] = "ᴢ",

				[" "] = ""
			}

			local function filter(message) -- smart filtering technique
				local actual_string = ""
				for i, v in pairs(message:split("")) do
					if letters[v] then
						actual_string = actual_string .. letters[v]
					else
						actual_string = actual_string .. v
					end
				end
				actual_string = actual_string:gsub("'", "")
				warn(actual_string)
				return actual_string
			end

			local function clearlogsf()
				for i = 1, 19 do
					chat:SendAsync("")
				end
			end

			clearlogs.MouseButton1Click:Connect(function()
				clearlogsf()
			end)

			box:GetPropertyChangedSignal("Text"):Connect(function()
				if #box.Text > 0 then
					bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
				elseif #box.Text > 200 or #box.Text == 0 then
					bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(131, 131, 131)
				end
			end)
			
			local function sendchat(msg, original_msg)
				-- hyper cool builderman hack --
				local tagged = game.Chat:FilterStringForBroadcast(msg, game.Players.LocalPlayer) ~= msg -- means it tagged
				if tagged then
					game.StarterGui:SetCore("SendNotification", {
						Title = "Crystal Meth",
						Text = "It got tagged bro, on BD."
					})
					return
				end
				if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
					game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
				else
					chat:SendAsync(msg)
				end
			end
			box.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					sendchat(filter(box.Text), box.Text)
					box.Text = ""
				end
			end)
		end)
	end
	a()
end)
