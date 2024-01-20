local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = { colorscheme = "midnight" },
    },
    { import = "plugins" },
    {
      "loctvl842/monokai-pro.nvim",
      "nyoom-engineering/oxocarbon.nvim",
      "eandrju/cellular-automaton.nvim",
      "catppuccin/nvim",
      "AlexvZyl/nordic.nvim",
    },
    { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
