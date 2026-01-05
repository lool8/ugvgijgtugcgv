local WindUI = 
loadstring(game:HttpGet("https://raw.githubusercontent.com/lool8/ugvgijgtugcgv/refs/heads/main/ui.lua"))()

local Window = WindUI:CreateWindow({
    Title = "华莱士",
    Icon = "crown",
    IconThemed = false,
    Author = "Parke",
    Folder = "hualaishi",
    Size = UDim2.fromOffset(500, 390),
    Transparent = true,
    Background = 'https://raw.githubusercontent.com/lool8/ugvgijgtugcgv/refs/heads/main/IMG_20260105_191758.jpg',
    Theme = "Sky",
    User = { Enabled = true },
    SideBarWidth = 240,
    ScrollBarEnabled = true,
    StrokeThickness = 2,
    StrokeColor = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
})

Window:EditOpenButton({
    Title = "华莱士",
    Icon = "",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 5,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})
local mainContainer = Window.UIElements.Main
if mainContainer then
    local stroke = Instance.new("UIStroke")
    stroke.Name = "RainbowStroke"
    stroke.Thickness = 1
    stroke.Color = Color3.new(1, 1, 1)
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    local gradient = Instance.new("UIGradient")
    gradient.Name = "RainbowGradient"
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),    
        ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255, 165, 0)), 
        ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)), 
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),  
        ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)), 
        ColorSequenceKeypoint.new(0.83, Color3.fromRGB(75, 0, 130)), 
        ColorSequenceKeypoint.new(1, Color3.fromRGB(238, 130, 238))
    })
    gradient.Enabled = true
    gradient.Offset = Vector2.new(0, 0)
    
    stroke.Parent = mainContainer
    gradient.Parent = stroke
    
    task.spawn(function()
        local rotationSpeed = 50
        while mainContainer and mainContainer.Parent do
            local deltaTime = task.wait(0.01)
            gradient.Rotation = (gradient.Rotation + rotationSpeed * 0.1) % 360
        end
    end)
    
end

local Tabs = {
    Player = Window:Tab({ Title = "主页", Icon = "house" }),
}
Window:SelectTab(1)
Window:EditOpenButton({
    Title = "华莱士",
    Icon = "rbxassetid://7252023075",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("#484848"),
        Color3.fromHex("#039be5"),
        Color3.fromHex("#ffffff")
    ),
    Draggable = true,
})
Window:OnClose(function()
end)