--require("catppuccin").setup({
--    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
--    highlight_overrides = {
--        mocha = function(mocha)
--            return {
--                -- see catppuccin/nvim#313
--                NormalFloat = { fg = mocha.text, bg = mocha.none },
--            }
--        end,
--    },
--    flavour = "latte",
--    transparent_background = false,
--    integrations = {
--        dap = {
--            enabled = true,
--            enable_ui = true,
--        },
--        illuminate = true,
--        neotest = true,
--        notify = true,
--        neogit = true,
--    },
--})

require("indent_blankline").setup({
    max_indent_increase = 1,
    context_char = "│",
    show_current_context = true,
    show_trailing_blankline_indent = false,
})

require("toggleterm").setup({
    open_mapping = [[<a-p>]],
    direction = "float",
    float_opts = {
        border = "rounded",
    },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({
    paths = vim.fn.stdpath("config") .. "/snippets",
})

-- Keymaps
local keymap = vim.keymap.set

keymap("n", "<leader>n", require("notify").dismiss)
