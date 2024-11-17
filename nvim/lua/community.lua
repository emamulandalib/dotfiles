-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

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
local scrolling_plugins = { "mini-animate" }
for _, scrolling_plugin in ipairs(scrolling_plugins) do
  table.insert(plugins, { import = "astrocommunity.scrolling." .. scrolling_plugin })
end

-- Recipes
local recipes = { "neovide", "telescope-nvchad-theme", "auto-session-restore" }
for _, recipe in ipairs(recipes) do
  table.insert(plugins, { import = "astrocommunity.recipes." .. recipe })
end

-- Motions
local motions = { "flash-nvim", "mini-ai", "nvim-surround" }
for _, motion in ipairs(motions) do
  table.insert(plugins, { import = "astrocommunity.motion." .. motion })
end

-- Color Scheme
local clrschms = { "tokyonight-nvim", "github-nvim-theme", "nightfox-nvim", "tokyodark-nvim" }
for _, clrschm in ipairs(clrschms) do
  table.insert(plugins, { import = "astrocommunity.colorscheme." .. clrschm })
end

-- Random
table.insert(plugins, { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" })
table.insert(plugins, { import = "astrocommunity.indent.mini-indentscope" })
table.insert(plugins, { import = "astrocommunity.syntax.hlargs-nvim" })
table.insert(plugins, { import = "astrocommunity.completion.copilot-lua" })

return plugins
