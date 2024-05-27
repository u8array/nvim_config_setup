return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "goolord/alpha-nvim",
    config = function()
      require'alpha'.setup(require'configs.alpha')
    end,
    event = "VimEnter",
  },
  {
    "rust-lang/rust.vim",
    config = function()
      vim.cmd [[
        " Enable Rust file type plugin (ftplugin).
        let g:rust_enabled = 1
        " Enable Rust syntax highlighting.
        let g:rust_syntax_enabled = 1
      ]]
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    requires = { {'nvim-telescope/telescope.nvim'} },
    config = function() 
      require'telescope'.load_extension('project') 
    end,
  },
  
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
