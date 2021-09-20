vim.cmd(' hi FloatermBorder guibg=NONE guifg=orange')

-- disable  indent lines on floaterm windows
vim.autocmd("User", "FloatermOpen", vim.cmd.IndentLinesDisable)
