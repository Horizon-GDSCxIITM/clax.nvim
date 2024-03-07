-- leader keymaps
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
vim.keymap.set("n","<leader>nt",vim.cmd.Neotree)
vim.keymap.set("n","<leader>md",vim.cmd.MarkdownPreviewToggle) --only works on md files
vim.keymap.set("n","<leader>cs","<cmd>Telescope colorscheme<cr>") -- added colorscheme keybind
vim.cmd('set number')
vim.cmd("colorscheme vim")
vim.cmd('colorscheme default')
vim.cmd('tnoremap <Esc> <C-/><C-n>') --remap terminal for insert to normal mode
function open_terminal()
	-- make vertical split
	vim.cmd("vsplit")
	vim.cmd("set nonumber")
	vim.cmd("cd %:p:h") -- terminal now opens in current directory
	vim.cmd("terminal")
	vim.cmd("startinsert") --enter insert mode
end 

vim.keymap.set("n","<leader>ot","<cmd>lua open_terminal()<cr>")



local packer = require('packer')
packer.util = require('packer.util')

packer.startup(function()
  local use = use
  -- add you plugins here like:
  -- use 'neovim/nvim-lspconfig'
   use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
      }
use { "williamboman/mason.nvim"}
      
use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
}
   use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
       }

use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
  
use {"williamboman/mason.nvim"} -- mason
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
      }

      use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup({theme = 'clax'})
  end
}

use {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
}
use {"hrsh7th/nvim-cmp"} --completion plugin
use {"hrsh7th/cmp-buffer"} --source for text in buffer
use {"hrsh7th/cmp-path"} --source for file system paths
use{"saadparwaiz1/cmp_luasnip"} -- for autocompletion
use{"rafamadriz/friendly-snippets"} -- useful snippets
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use { 'nvim-tree/nvim-web-devicons'}
use {'romgrk/barbar.nvim'}

use 'andweeb/presence.nvim'
use { 
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	requires = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	}
}

  end
)

-- keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>nf', vim.cmd.new, {})


-- treesitter config
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "javascript", "typescript", "bash", "go", "rust","html","css", },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,

   additional_vim_regex_highlighting = false,
  },
}


-- import nvim-cmp plugin safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

-- import luasnip plugin safely
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- load VSCode-like snippets from plugins (e.g., friendly-snippets)


require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- LSP
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within the current buffer
    { name = "path" }, -- file system paths
  }),
})

-- Define a function to save the code
function save_code()
    vim.cmd(":w")
end
-- Map Ctrl + S to save the current buffer
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })



-- barbar config
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd
