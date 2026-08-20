local mainMod = "SUPER"
local leftMod = "CTRL"
local rightMod = "ALT"

local terminal = "kitty"
local fileManager = "thunar"
local menu = "/home/conner/.config/rofi/launchers/type-4/launcher.sh"
local power = "/home/conner/.config/rofi/powermenu/type-1/powermenu.sh"
local lock = "hyprlock"
local browser = "brave --disable-features=WaylandWpColorManagerV1 --hide-crash-restore-bubble"
local settings = "better-control"
local monitor = "kitty -e bashtop"
local office = "libreoffice --writer"
local games = "steam"
local talk = "discord"
local code = "emacs"

-- Program launchers
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(settings))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float())
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(power))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(lock))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(
    mainMod .. " + H",
    hl.dsp.exec_cmd("hyprshot -m region -o Pictures/Hyprshot")
)
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(monitor))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(office))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(games))
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd(talk))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(code))


-- Move focus with mainMod + arrow keys
hl.bind(
    mainMod .. " + left",
    hl.dsp.focus({ direction = "l" })
)

hl.bind(
    mainMod .. " + right",
    hl.dsp.focus({ direction = "r" })
)

hl.bind(
    mainMod .. " + up",
    hl.dsp.focus({ direction = "u" })
)

hl.bind(
    mainMod .. " + down",
    hl.dsp.focus({ direction = "d" })
)


-- Window movement
hl.bind(
    mainMod .. " + SHIFT + left",
    hl.dsp.window.move({ direction = "l" })
)

hl.bind(
    mainMod .. " + SHIFT + right",
    hl.dsp.window.move({ direction = "r" })
)

hl.bind(
    mainMod .. " + SHIFT + up",
    hl.dsp.window.move({ direction = "u" })
)

hl.bind(
    mainMod .. " + SHIFT + down",
    hl.dsp.window.move({ direction = "d" })
)


-- Scroll through existing workspaces
hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)


-- Move/resize windows with mainMod + LMB/RMB
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)


-- Media keys
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 1%+"
    ),
    { repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"
    ),
    { repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ),
    { locked = true }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl set 5%-"),
    { repeating = true }
)

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl set +5%"),
    { repeating = true }
)


-- Laptop lid switch
hl.bind(
    "switch:Lid Switch",
    hl.dsp.exec_cmd("hyprlock"),
    { locked = true }
)
