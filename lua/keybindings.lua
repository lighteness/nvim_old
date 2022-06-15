local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>',{})
keymap('i', '<c-s>', '<Esc>:w<CR>a',{})
local opts = { noremap = true }
keymap('n','<c-j>', '<c-w>j', opts)
keymap('n','<c-h>', '<c-w>h', opts)
keymap('n','<c-k>', '<c-w>k', opts)
keymap('n','<c-l>', '<c-w>l', opts)

keymap('n', '<F8>', '<cmd>lua require"dap".continue()<CR>', opts)
keymap('n', '<F5>', '<cmd>lua require"dap".step_over()<CR>', opts)
keymap('n', '<F6>', '<cmd>lua require"dap".step_into()<CR>', opts)
keymap('n', '<F7>', '<cmd>lua require"dap".step_out()<CR>', opts)
keymap('n', '<c-s-b>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)

keymap('n', ',dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', opts)
keymap('n', ',hh', '<cmd>lua require"dap.ui.variables".hover()<CR>', opts)
keymap('v', ',h',
            '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', opts)

keymap('n', ',h', '<cmd>lua require"dap.ui.widgets".hover()<CR>', opts)
keymap('n', ',duf',
            "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", opts)

keymap('n', ',dsbr',
            '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)
keymap('n', ',dsbm',
            '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opts)
keymap('n', ',dro', '<cmd>lua require"dap".repl.open()<CR>', opts)
keymap('n', ',drl', '<cmd>lua require"dap".repl.run_last()<CR>', opts)
