local home = os.getenv("HOME")

local file = io.open("/etc/hostname", "r")
local hostname = file:read("*l")
file:close()

if hostname == "arch-laptop" then
    dofile(home .. "/.config/hypr/hyprland/laptop/workspace.lua")

elseif hostname == "arch" then
    dofile(home .. "/.config/hypr/hyprland/pc/workspace.lua")

else
    error("Unknown system: " .. tostring(hostname))
end
