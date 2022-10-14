-- Set up nvim-cmp.
local cmp = require('cmp')
local lspconfig = require('lspconfig')
local servers = { 'tsserver', 'solidity_ls', 'solargraph', 'dockerls' }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          cmp.confirm()
        end
      else
        fallback()
      end
    end, {"i","s","c",}),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'look' }
  })
})

-- Set up lspconfig.
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities
  })
end
