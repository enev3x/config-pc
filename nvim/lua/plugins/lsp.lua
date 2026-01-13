return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "go",
        "sql",
        "markdown",
        "markdown_inline",
        "typescript",
        "javascript",
        "svelte",
        "python",
        "lua",
        "php",
        "html",
        "css",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "rust-analyzer",
        "gopls",
        "sqls",
        "vtsls", -- TS/JS
        "svelte-language-server",
        "pyright",
        "lua-language-server",
        "intelephense", -- PHP

        -- Formatter
        "stylua", -- Lua
        "prettier", -- JS/TS/Svelte/MD/JSON
        "shfmt", -- Shell
        "gofumpt", -- Go
        "rustfmt", -- Rust
        "black", -- Python
        "php-cs-fixer", -- PHP
        "sql-formatter", -- SQL

        -- Linter
        "eslint_d",
        "golangci-lint",
        "phpstan",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Kamu bisa nambahin setting spesifik di sini kalau mau
        gopls = {},
        rust_analyzer = {},
        pyright = {},
        intelephense = {},
        svelte = {},
        sqls = {},
      },
    },
  },
}
