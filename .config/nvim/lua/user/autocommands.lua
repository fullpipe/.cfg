vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
    callback = function()
        vim.cmd([[
            nnoremap <silent> <buffer> q :close<CR>
            set nobuflisted
        ]])
    end,
})

-- Remove statusline and tabline when in Alpha
vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "AlphaReady" },
    callback = function()
        vim.cmd([[
            set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
            set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
        ]])
    end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "gitcommit" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "markdown" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end,
})


vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   callback = function()
--     vim.cmd [[
--       if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
--     ]]
--   end,
-- })

vim.api.nvim_create_autocmd({ "VimResized" }, {
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})

vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
    callback = function()
        vim.cmd("quit")
    end,
})
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    callback = function()
        vim.cmd("set formatoptions-=cro")
    end,
})

-- vim.api.nvim_create_autocmd({ "TextYankPost" }, {
--     callback = function()
--         vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
--     end,
-- })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.java" },
    callback = function()
        vim.lsp.codelens.refresh()
    end,
})

-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
-- 	callback = function()
-- 		vim.cmd("hi link illuminatedWord LspReferenceText")
-- 	end,
-- })

-- vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
-- 	callback = function()
-- 	local line_count = vim.api.nvim_buf_line_count(0)
-- 		if line_count >= 5000 then
-- 			vim.cmd("IlluminatePauseBuf")
-- 		end
-- 	end,
-- })

-- Format on save
-- TODO: it is good to have keymap to save without autoformat
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    callback = function()
        if vim.bo.filetype == "go" then
            require("go.format").goimport()
        else
            vim.lsp.buf.format({ async = false })
        end
    end,
})

-- show cursor line only in active window
local cursorGrp = vim.api.nvim_create_augroup("CursorLine", { clear = true })
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
    pattern = "*",
    command = "set cursorline",
    group = cursorGrp,
})
vim.api.nvim_create_autocmd(
    { "InsertEnter", "WinLeave" },
    { pattern = "*", command = "set nocursorline", group = cursorGrp }
)
