local ls = require("luasnip")

ls.setup({
    history = true,
})

require("luasnip.loaders.from_vscode").load({ include = { "python" } })

