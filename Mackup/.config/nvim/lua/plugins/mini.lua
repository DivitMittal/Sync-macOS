-- CONFIGS
require('mini.surround').setup()
require('mini.comment').setup()

if not vim.g.vscode then
    require('mini.completion').setup()
    require('mini.indentscope').setup()
    require('mini.pairs').setup()
    local starter = require('mini.starter')
    starter.setup({
      header = '',
      footer = '',
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.indexing('all', { 'Builtin actions' }),
        starter.gen_hook.padding(3, 2),
      },
  })
end

