local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dsi"] = {
      "<cmd> DapStepInto <CR>",
      "Start or continue the debugger",
      "DBG Step Into",
    },
    ["<leader>dsv"] = {
      "<cmd> DapStepOver <CR>",
      "Start or continue the debugger",
      "DBG Step Over",
    },
    ["<leader>dso"] = {
      "<cmd> DapStepOut <CR>",
      "DBG Step Out",
    },
  }
}

M.keybinds = {
    n = {
        ["<C-s>"] = {"<cmd> w <CR>", "Quickly save current file"},
        ["<F5>"] = {"<cmd> w <CR>:make -j12<CR>", "Run :make -j12 in current directory"},
        ["<F6>"] = {"<cmd> w <CR>:make -j12<CR>:!./build/" .. vim.fn.expand('%:t:r'), "Same as F5 but also executes the result"},
        ["<C-f>"] = {"<cmd>:lua vim.lsp.buf.code_action() <CR>", "Run code fix suggestion"},
    },
    i = {
        ["<C-s>"] = {"<cmd> w <CR>", "Quickly save current file"},
    },
}


return M

