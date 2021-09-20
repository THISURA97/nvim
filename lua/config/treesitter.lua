
local M = {}

M.setup = function()
  local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
  parser_configs.http = {
    install_info = {
      url = "https://github.com/NTBBloodbath/tree-sitter-http",
      files = { "src/parser.c" },
      branch = "main",
    },
  }

  local nvim_treesitter = require "nvim-treesitter.configs"
  nvim_treesitter.setup {
    autotag = {
      enable = true,
      filetypes = { "html", "htmldjango", "xml"}
    },
    ensure_installed = { "python",
                         "bash",
                         "css",
                         "comment",
                         "dockerfile",
                         "go",
                         "html",
                         "http",
                         "javascript",
                         "json",
                         "lua",
                         "regex",
                         "toml",
                         "yaml",
                         "graphql",
                         "jsdoc",
                         "jsonc",
                         "python",
                         "ruby",
                         "rust",
                         "tsx",
                         "typescript",
                         -- "yang",
                       },
    highlight = {
      enable = true,
      custom_captures = {},
    },

  indent = {
    enable = true
  },
  context_commentstring = {
    enable = true
  },

    textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
        }
    },

  textobjects = {
        select = {
            enable = true,

            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,

            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },

        move = {

            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },

            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },

            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },

            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
            },

        },

      },
    }
end

return M
