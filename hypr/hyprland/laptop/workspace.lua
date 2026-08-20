local mainMod = "SUPER"

-- Laptop display
hl.monitor({
    output = "eDP-1",
    mode = "1920x1200@60",
    position = "0x0",
    scale = 1,
})

-- Switch workspaces with SUPER + [0-9]
-- Move active window with SUPER + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10

    hl.bind(mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = i }))

    hl.bind(mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i }))
end
