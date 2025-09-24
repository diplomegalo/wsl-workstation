return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      prompt_prefix = "> ",
      selection_caret = "> ",
      layout_strategy = "horizontal",
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = "top",
      },
      winblend = 0,
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Find Buffers",
    },
    {
      "<leader>fk",
      function()
        require("telescope.builtin").keymaps()
      end,
      desc = "Find Keymaps",
    },
  },
}
