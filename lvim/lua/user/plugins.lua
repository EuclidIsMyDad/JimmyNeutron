local M = {}

M.plugins = {

  {
    "github/copilot.vim",
  },


  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {enabled = false},
        panel = {enabled = false},
      })
    end,
  },


  {
    "zbirenbaum/copilot-cmp",
     config = function ()
     require("copilot_cmp").setup()
    end,
  },

  {
   "hrsh7th/nvim-cmp",
    dependencies = {
      "zbirenbaum/copilot-cmp",
      },

  },


  {
    'AndreM222/copilot-lualine',
    config = function ()
      require("lualine").setup()
   end

  },


  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000
  },


  {
    "onsails/lspkind-nvim",
    config = function()
     require("lspkind").init({
        mode = 'symbol_text',
        preset = "default",
        symbol_map = {
          Copilot = "",
          Text = "",
          Method = "",
          Function = "",
          Constructor = "",
          Field = "ﰠ",
          Variable = "",
          Class = "ﴯ",
          Interface = "",
          Module = "",
          Property = "ﰠ",
          Unit = "",
          Value = "",
          Enum = "",
          Keyword = "",
          Snippet = "",
          Color = "",
          File = "",
          Reference = "",
          Folder = "",
          EnumMember = "",
          Constant = "",
          Struct = "פּ",
          Event = "",
          Operator = "",
          TypeParameter = ""
        },
      })    end
  },


  {
    "phaazon/hop.nvim",
     event = "BufRead",
     config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

}

return M

