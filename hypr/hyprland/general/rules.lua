-- Suppress maximize events
hl.window_rule({
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Qalculate
hl.window_rule({
    match = {
        class = "(qalculate-gtk)",
    },
    float = true;
    center = true;
    size = { 1000, 600 },
})

-- Thunar
hl.window_rule({
    match = {
        class = "(thunar)",
    },
    float = true,
    center = true,
    size = { 1000, 600 },
})

-- Control
hl.window_rule({
    match = {
        class = "(control)",
    },
    float = true;
    center = true;
    size = { 1000, 600 },
})

-- Display password window
hl.window_rule({
    match = {
        class = "(Display)",
        title = "^(pass:)(.*)$",
    },
    float = true;
})

hl.window_rule({
    match = {
        float = true,
        class = "(Display)",
        title = "^(pass:)(.*)$",
    },
    center = true;
})

-- Steam
hl.window_rule({
    match = {
        class = "(steam)",
    },
    maximize = true;
})

--Use for lazygit called from within emacs
hl.window_rule({
    match = {
      class = "lazygit"
    },
    float = true;
    center = true;
    size = { 1750, 900 }
})

-- XWayland Video Bridge
hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = {
        class = "xwaylandvideobridge",
    },
    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = { 1, 1 },
    opacity = "0.0",
})
