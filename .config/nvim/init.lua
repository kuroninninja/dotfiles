local nvim_config_dir = vim.fn.stdpath('config')

package.path = package.path .. ';' .. nvim_config_dir .. '/?.lua'

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- plugins file
require('plugins')

-- run packersync
if packer_bootstrap then
  require('packer').sync()
end

-- Normal settings
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
