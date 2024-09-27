local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  'othree/html5.vim',
  'pangloss/vim-javascript',
  'evanleck/vim-svelte',
  'famiu/feline.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim'
})
require('feline').setup()
