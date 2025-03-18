return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "BenSec",
          path = "/mnt/c/users/Ben/Obsidian/BenSec",
        },
      },
      picker = {
        name = "telescope.nvim",
      },
    })

    vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New Note" })
    vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTags<cr>", { desc = "Tags" })
    vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Open Vault" })
    vim.keymap.set("n", "<loeader>or", "<cmd>ObsidianRename --dry-run<cr>", { desc = "Rename Note" })
  end,
}
