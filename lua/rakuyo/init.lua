require('rakuyo.settings')
require('rakuyo.remapping')
require('rakuyo.lazyload')

require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/snippets/"})

-- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
