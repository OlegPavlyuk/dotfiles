return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup()
      require('nvim-treesitter').install({
        'python',
        'lua',
        'javascript',
        'typescript',
        'tsx',
        'json',
        'bash',
        'yaml',
        'markdown',
        'markdown_inline',
      })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'python',
          'lua',
          'javascript',
          'typescript',
          'typescriptreact',
          'json',
          'bash',
          'yaml',
          'markdown',
          'markdown_inline',
        },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
