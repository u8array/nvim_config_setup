return {{
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    config = function()
        require "configs.conform"
    end
}, {
    "goolord/alpha-nvim",
    config = function()
        require'alpha'.setup(require 'configs.alpha')
    end,
    event = "VimEnter"
}, {"rust-lang/rust.vim"}, {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
    end
}, {
    "nvim-telescope/telescope-project.nvim",
    requires = {{'nvim-telescope/telescope.nvim'}},
    config = function()
        require'telescope'.load_extension('project')
    end
}, {
    "github/copilot.vim",
    event = "VimEnter"
}, {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {"lua-language-server", "stylua", "html-lsp", "css-lsp", "prettier"}
    }
}, {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {"vim", "lua", "vimdoc", "html", "css"}
    }
}, {
    "vigoux/LanguageTool.nvim",
    config = function()
        require('LanguageTool').set_language("de")
    end
}}
