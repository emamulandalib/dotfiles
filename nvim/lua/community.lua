-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
local plugins = {
  "AstroNvim/astrocommunity",
}

-- Programming Languages
local programming_languages = {
  "lua",
  "python",
  "rust",
  "go",
  "ansible",
  "bash",
  "cmake",
  "go",
  "docker",
  "json",
  "helm",
  "terraform",
  "markdown",
  "sql",
  "zig",
  "yaml",
  "typescript-all-in-one",
  "html-css",
}

for _, lang in ipairs(programming_languages) do
  table.insert(plugins, { import = "astrocommunity.pack." .. lang })
end

-- Remote Development
table.insert(plugins, { import = "astrocommunity.remote-development.distant-nvim" })

-- Scrolling
local scrolling_plugins = { "mini-animate", "satellite-nvim" }
for _, scrolling_plugin in ipairs(scrolling_plugins) do
  table.insert(plugins, { import = "astrocommunity.scrolling." .. scrolling_plugin })
end

table.insert(plugins, { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" })
table.insert(plugins, { import = "astrocommunity.colorscheme.tokyonight-nvim" })
table.insert(plugins, { import = "astrocommunity.indent.mini-indentscope" })

return plugins
