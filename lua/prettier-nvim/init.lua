local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "ruby",
    "solidity",
    "lua",
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        check_package_json = false, -- if `true`, checks `package.json` for `"prettier"` key
      })
    end,
    runtime_condition = function(params)
      return true
    end,
    timeout = 5000,
  }
})
