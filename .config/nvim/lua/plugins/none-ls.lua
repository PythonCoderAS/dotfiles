return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Python
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.isort,
      },
    })
  end,
}
