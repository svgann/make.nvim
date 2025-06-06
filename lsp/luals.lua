return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {'.luarc.json',
  '.luarc.jsonc',
  '.luacheckrc',
  '.stylua.toml',
  'stylua.toml',
  'selene.toml',
  'selene.yml',
  '.git',
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
    workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        }
      },
    diagnostics = { disable = { 'missing-fields' } },
    }
  }

}
