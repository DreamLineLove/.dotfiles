-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim")

    use("bluz71/vim-nightfly-guicolors") -- default colorscheme

    use("christoomey/vim-tmux-navigator")

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- alternative to netrw
    use("nvim-tree/nvim-tree.lua")

    -- vs-code like icons
    use("kyazdani42/nvim-web-devicons")

    -- icons

    if packer_bootstrap then 
        require("packer").sync()
    end
end)
