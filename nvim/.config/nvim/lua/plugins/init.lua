return {
  {
    "williamboman/mason.nvim", -- Add Mason
    opts = {
  		ensure_installed = {
  		"typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",       
      "prettierd",       
      "html-lsp",  
  		},
  	},
  },
  -- {
  --   "folke/which-key.nvim",
  --   event = "VeryLazy",
  -- },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" }, -- Ignore specific folders
          path_display = { "tail" },
        },
        pickers = {
          find_files = {
            find_command = { "fd", "--type", "f" }, -- Default to files only
          },
          live_grep = {
            additional_args = function()
              return { "--hidden" } -- Include hidden files in live grep
            end,
          },
        },
        -- extensions = {
        --   fzf = {
        --     fuzzy = true, -- Enable fuzzy searching
        --     override_generic_sorter = true,
        --     override_file_sorter = true,
        --     case_mode = "smart_case", -- Case-insensitive unless uppercase is used
        --   },
        -- },
      }

      -- -- Load the fzf-native extension
      -- require("telescope").load_extension("fzf")
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      lazy = false,
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "javascript", "typescript", "tsx", "json", "yaml", "markdown",
  		},
  	},
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript" },
    config = function()
      require("nvim-ts-autotag").setup {
        filetypes = { "html", "typescriptreact", "javascriptreact", "javascript", "typescript" },
      }
    end,
  },

--   "nvim-lua/plenary.nvim",

  {
    "nvchad/ui",
     config = function()
       require "nvchad" 
     end
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
 },

--  "nvzone/volt", -- optional, needed for theme switcher
}
