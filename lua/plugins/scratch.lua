return {
  "reybits/scratch.nvim",
  keys = {
    { "<leader>s", "<cmd>Scratch<cr>", desc = "Open scratch buffer" },
  },
  config = function()
    require("scratch").setup()
  end,
}