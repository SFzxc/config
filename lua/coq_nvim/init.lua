local lspconfig = require('lspconfig')
local servers = { 'tsserver' }

-- Automatically start coq
vim.g.coq_settings = { auto_start = 'shut-up' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({}))
end

-- local coq = require'coq'

-- coq.setup({
--   snippet = {
--     expand = function(args)
--       vim.fn["vsnip#anonymous"](args.body)
--     end,
--   },
--   window = {
--     -- completion = coq.config.window.bordered(),
--     -- documentation = coq.config.window.bordered(),
--   },
--   mapping = coq.mapping.preset.insert({
--     ['<C-b>'] = coq.mapping.scroll_docs(-4),
--     ['<C-f>'] = coq.mapping.scroll_docs(4),
--     ['<C-Space>'] = coq.mapping.complete(),
--     ['<C-e>'] = coq.mapping.abort(),
--     ['<CR>'] = coq.mapping.confirm({ select = true }),
--     ["<Tab>"] = coq.mapping(function(fallback)
--       -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
--       if coq.visible() then
--         local entry = coq.get_selected_entry()
--         if not entry then
--           coq.select_next_item({ behavior = coq.SelectBehavior.Select })
--         else
--           coq.confirm()
--         end
--       else
--         fallback()
--       end
--     end, {"i","s","c",}),
--   }),
--   sources = coq.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'look' },
--   }, {
--     { name = 'buffer' },
--   })
-- })

-- -- Set configuration for specific filetype.
-- coq.setup.filetype('gitcommit', {
--   sources = coq.config.sources({
--     { name = 'coq.git' }, -- You can specify the `coq.git` source if you were installed it.
--   }, {
--     { name = 'buffer' },
--   })
-- })

-- -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
-- coq.setup.cmdline({ '/', '?' }, {
--   mapping = coq.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- coq.setup.cmdline(':', {
--   mapping = coq.mapping.preset.cmdline(),
--   sources = coq.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })

-- -- Set up lspconfig.
-- local capabilities = require('coq').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require'lspconfig'.tsserver.setup {
--   capabilities = capabilities
-- }
