local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    [[ ███       ███ ]],
    [[████      ████]],
    [[██████     █████]],
    [[███████    █████]],
    [[████████   █████]],
    [[█████████  █████]],
    [[█████ ████ █████]],
    [[█████  █████████]],
    [[█████   ████████]],
    [[█████    ███████]],
    [[█████     ██████]],
    [[████      ████]],
    [[ ███       ███ ]],
    [[                  ]],
    [[ N  E  O  V  I  M ]],
}

vim.cmd [[
  highlight Blue guifg=#0087d7
  highlight Green guifg=#5faf00
  highlight GreenFBlueB guifg=#5faf00 guibg=#0087d7
  highlight LGrFBlueB guifg=#5faf00 guibg=#7bbf52
  highlight LGreen guifg=#7bbf52
]]

dashboard.section.header.opts.hl = {
    { { "Green", 1, 16 }, { "LGreen", 23, 35 }, },
    { { "Blue", 0, 3 },  { "GreenFBlueB", 3, 6 }, { "Green", 6, 21 }, { "LGreen", 27, 42 }, },
    { { "Blue", 0, 6 },  { "GreenFBlueB", 6, 9 },   { "Green", 9, 24 },        { "LGreen", 29, 44 }, },
    { { "Blue", 0, 9 },  { "GreenFBlueB", 9, 12 },  { "Green", 12, 27 },       { "LGreen", 31, 46 }, },
    { { "Blue", 0, 12 }, { "GreenFBlueB", 12, 15 }, { "Green", 15, 30 },       { "LGreen", 33, 49 }, },
    { { "Blue", 0, 15 }, { "Green", 15, 34 },       { "LGreen", 35, 50 }, },
    { { "Blue", 0, 15 }, { "Green", 16, 35 },       { "LGreen", 35, 50 }, },
    { { "Blue", 0, 15 }, { "Green", 17, 36 },       { "LGreen", 35, 50 }, },
    { { "Blue", 0, 15 }, { "Green", 18, 34 },       { "LGrFBlueB", 33, 36 }, { "LGreen", 36, 49 }, },
    { { "Blue", 0, 15 }, { "Green", 19, 35 },       { "LGrFBlueB", 34, 37 }, { "LGreen", 37, 47 }, },
    { { "Blue", 0, 15 }, { "Green", 20, 36 },       { "LGrFBlueB", 35, 38 }, { "LGreen", 38, 45 }, },
    { { "Blue", 0, 15 }, { "Green", 21, 37 },       { "LGrFBlueB", 36, 39 }, { "LGreen", 39, 43 }, },
    { { "Blue", 1, 13 }, { "Green", 19, 35 }, },
    {},
    { { "Green", 0, 9 }, { "Blue", 9, 18 }, },
}


-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , "<cmd> ene <BAR> startinsert <cr>"),
    dashboard.button( "f", "  > Find file", "<cmd> Telescope <cr>"),
    dashboard.button( "r", "  > Recent"   , "<cmd> Telescope oldfiles <cr>"),
    dashboard.button( "s", "  > Settings" , "<cmd> Lazy <cr>"),
    dashboard.button( "q", "  > Quit NVIM", "<cmd> qa <cr>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

return dashboard.opts
