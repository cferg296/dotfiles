local leftMod = "CTRL"
local mainMod = "SUPER"
local rightMod = "ALT"


-- Monitors
hl.monitor({
    output = "DP-1",
    mode = "1920x1080@144",
    position = "0x0",
    scale = 1,
})

hl.monitor({
    output = "DP-2",
    mode = "1920x1080@74.97",
    position = "1920x0",
    scale = 1,
})

hl.monitor({
    output = "DP-3",
    mode = "1920x1080@74.97",
    position = "-1920x0",
    scale = 1,
})

-- TV - uncomment when connected
-- hl.monitor({
--     output = "HDMI-A-1",
--     mode = "1920x1080@60",
--     position = "3840x0",
--     scale = 1,
-- })


-- Workspaces 1-10 -> DP-3
for i = 1, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-3",
    })
end

-- Workspaces 11-20 -> DP-1
for i = 11, 20 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-1",
    })
end

-- Workspaces 21-30 -> DP-2
for i = 21, 30 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-2",
    })
end


-- Workspace keys:
-- CTRL  + 1-0 -> workspaces 1-10
-- SUPER + 1-0 -> workspaces 11-20
-- ALT   + 1-0 -> workspaces 21-30

local function workspaceBinds(mod, offset)
    for key = 1, 9 do
        local workspace = offset + key

        hl.bind(
            mod .. " + " .. tostring(key),
            hl.dsp.focus({
                workspace = tostring(workspace),
            })
        )
    end

    hl.bind(
        mod .. " + 0",
        hl.dsp.focus({
            workspace = tostring(offset + 10),
        })
    )
end

workspaceBinds(leftMod, 0)
workspaceBinds(mainMod, 10)
workspaceBinds(rightMod, 20)


-- Move windows:
-- CTRL  + SHIFT + 1-0 -> workspaces 1-10
-- SUPER + SHIFT + 1-0 -> workspaces 11-20
-- ALT   + SHIFT + 1-0 -> workspaces 21-30

local function moveWorkspaceBinds(mod, offset)
    for key = 1, 9 do
        local workspace = offset + key

        hl.bind(
            mod .. " + SHIFT + " .. tostring(key),
            hl.dsp.window.move({
                workspace = tostring(workspace),
            })
        )
    end

    hl.bind(
        mod .. " + SHIFT + 0",
        hl.dsp.window.move({
            workspace = tostring(offset + 10),
        })
    )
end

moveWorkspaceBinds(leftMod, 0)
moveWorkspaceBinds(mainMod, 10)
moveWorkspaceBinds(rightMod, 20)
