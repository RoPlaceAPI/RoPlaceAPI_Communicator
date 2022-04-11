--> Variables
local CanvasPath = game:GetService("Workspace").Canvas
--> Console Library
local console = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/RobloxArchiver/Console/main/src/main.lua"))()

--> Main
for index, block in pairs(CanvasPath:GetChildren()) do
    if block:IsA("Part") then
        console.log("Indexing: " ..index)
        console.info("  Position: " .. block.Name) --> The name is the "pixel positon" not the actual position.
        console.info("  Color: " .. block.Color)
    end
end

console.log("~~~~~~~~~~~~~~~~~~~")
console.log("Operation Complete!")

--[[

    Will make it export to CSV. 
    With that it can easily be edited a bit to be changed to JSON. 

    Or maybe I can make it export to JSON.

    This is meantt to be like a... Testbench!

]]
