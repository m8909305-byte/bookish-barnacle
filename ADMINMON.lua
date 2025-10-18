-- ADMINMON Script
-- Author: Mon 💖

-- สร้าง GUI หลัก
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local PasswordBox = Instance.new("TextBox")
local ConfirmButton = Instance.new("TextButton")
local ErrorLabel = Instance.new("TextLabel")

-- ตั้งค่า GUI
ScreenGui.Parent = game:GetService("CoreGui")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Visible = true

Title.Parent = Frame
Title.Text = "🔐 ADMINMON"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 26

PasswordBox.Parent = Frame
PasswordBox.PlaceholderText = "Enter password..."
PasswordBox.Size = UDim2.new(0.8, 0, 0, 40)
PasswordBox.Position = UDim2.new(0.1, 0, 0.4, 0)
PasswordBox.TextColor3 = Color3.fromRGB(255, 255, 255)
PasswordBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PasswordBox.Text = ""

ConfirmButton.Parent = Frame
ConfirmButton.Text = "Confirm"
ConfirmButton.Size = UDim2.new(0.6, 0, 0, 35)
ConfirmButton.Position = UDim2.new(0.2, 0, 0.7, 0)
ConfirmButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
ConfirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmButton.Font = Enum.Font.SourceSansBold
ConfirmButton.TextSize = 20

ErrorLabel.Parent = Frame
ErrorLabel.Text = ""
ErrorLabel.Size = UDim2.new(1, 0, 0, 25)
ErrorLabel.Position = UDim2.new(0, 0, 0.85, 0)
ErrorLabel.BackgroundTransparency = 1
ErrorLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
ErrorLabel.TextSize = 18

-- GUI แอดมิน
local AdminGui = Instance.new("ScreenGui")
local AdminFrame = Instance.new("Frame")
local AdminTitle = Instance.new("TextLabel")

AdminGui.Parent = game:GetService("CoreGui")
AdminGui.Enabled = false

AdminFrame.Parent = AdminGui
AdminFrame.Size = UDim2.new(0, 400, 0, 250)
AdminFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
AdminFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

AdminTitle.Parent = AdminFrame
AdminTitle.Text = "✅ Welcome, ADMINMON!"
AdminTitle.Size = UDim2.new(1, 0, 0, 50)
AdminTitle.TextColor3 = Color3.fromRGB(0, 255, 0)
AdminTitle.Font = Enum.Font.SourceSansBold
AdminTitle.TextSize = 24
AdminTitle.BackgroundTransparency = 1

-- ตรวจรหัส
local correctPassword = "0612323759MON"

ConfirmButton.MouseButton1Click:Connect(function()
	local input = PasswordBox.Text
	if input == correctPassword then
		Frame.Visible = false
		AdminGui.Enabled = true
	else
		ErrorLabel.Text = "❌ Incorrect password!"
	end
end)

print("ADMINMON auth ready. Enter password to open admin GUI.")
