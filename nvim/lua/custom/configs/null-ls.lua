local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.formatting.eslint_d,
  b.code_actions.eslint_d,
  -- b.formatting.prettierd,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports,
  b.formatting.golines,

  b.formatting.ruff.with {
    command = "ruff",
    args = { "format", "-n", "--stdin-filename", "$FILENAME", "-" },
  },
  b.diagnostics.ruff.with {
    command = "ruff",
    args = { "check", "-e", "-n", "--stdin-filename", "$FILENAME", "-" },
  },

  -- svelte
  -- b.formatting.prettier.with { filetypes = { "svelte" } },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
