local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'sumneko_lua',
	'rust_analyzer',
	'pyright',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
