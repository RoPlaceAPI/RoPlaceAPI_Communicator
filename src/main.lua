--> Variables
local console = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/RobloxArchiver/Console/main/src/main.lua"))() 
local CanvasPath = game:GetService("Workspace").Canvas
local rconsoleAssert = assert(rconsoleprint, "rconsole not supported")
local LocalPlayer = game:GetService("Players").LocalPlayer

console.log("index, block, color") -- for CSV to JS
console.n()

--> Console Log
if getfenv().logToConsole == true then
    if rconsoleAssert then
        for index, block in pairs(CanvasPath:GetChildren()) do
            if block:IsA("Part") then
                console.( index .. "    " .. block.Name .. "   " .. block.Color) --> The name is the "pixel positon" not the actual position.
            end
        end
    else
        LocalPlayer:Kick("rconsoleprint not supported. Disable it!")
    end
end

console.n()
console.log("# Operation Complete!")

--[[

    Currently working on exports to file.

    Exports to CSV Now - RobloxArchiver.
    Example: 8,


]]
