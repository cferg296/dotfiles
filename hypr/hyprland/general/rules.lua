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

--Use for terminal from within emacs
hl.window_rule({
    match = {
        class = "emacs-terminal"
    },
    float = true,
    center = true,
    size = { 1750, 900 },
})

--Limits steam special offers to a floating window rather than full-screen
hl.window_rule({
    match = {
        class = "steam",
        title = "Special Offers"
    },
    float = true,
    fullscreen = false,
    center = true,
    size = { 1200, 700 },
})


--creates a floating window when opening an image with imv
hl.window_rule({
    name = "imv",
    match = {
      class = "imv",
    },
    float = true;
    monitor = "DP-1",
    center = true,
})

hl.window_rule({
    name = "mpv",
    match = {
        class = "mpv",
    },
    float = true,
    monitor = "DP-1",
    center = true,
})
