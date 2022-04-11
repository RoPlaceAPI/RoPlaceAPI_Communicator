--> Variables
local console = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/RobloxArchiver/Console/main/src/main.lua"))() 
local CanvasPath = game:GetService("Workspace").Canvas
local rconsoleAssert = assert(rconsoleprint, "rconsole not supported")
local LocalPlayer = game:GetService("Players").LocalPlayer

--> Console Log
if getfenv().logToConsole == true then
    if rconsoleAssert then
        for index, block in pairs(CanvasPath:GetChildren()) do
            if block:IsA("Part") then
                console.log("Indexing: " ..index, "blue")
                console.info("  Position: " .. block.Name) --> The name is the "pixel positon" not the actual position.
                console.info("  Color: " .. tostring(block.Color))
            end
        end
    else
        LocalPlayer:Kick("rconsoleprint not supported.")
    end
end

console.log("~~~~~~~~~~~~~~~~~~~")
console.log("Operation Complete!")

--[[

Currently working on exports to file.

]]
