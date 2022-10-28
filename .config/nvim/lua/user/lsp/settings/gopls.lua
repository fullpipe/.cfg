local util = require("nvim_lsp/util")

return {
    --on_attach = on_attach,
    cmd = { "gopls", "serve" },
    filetypes = { "go", "go.mod" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        },
    },
}
