return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    table.insert(opts.ensure_installed, "prettier")

    vim.list_extend(opts.ensure_installed, {
      "debugpy", -- Python
      "js-debug-adapter", -- JavaScript/TypeScript
      "delve", -- Go
      "codelldb", -- C/C++/Rust
      "stylua",
      "black",
      "gomodifytags",
      "impl",
      "goimports",
      "gofumpt",
    })

    local additional_tools = {}
    for _, tool in ipairs(additional_tools) do
      table.insert(opts.ensure_installed, tool)
    end
  end,
}
