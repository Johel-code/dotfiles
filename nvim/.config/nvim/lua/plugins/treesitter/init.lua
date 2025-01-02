return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "java", "php", "phpdoc", "typescript", "blade", "markdown", "markdown_inline" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function()
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    }
    vim.filetype.add({
      pattern = {
        [".*%.blade%.php"] = "blade",
        [".*%.html"] = "htmldjango",
        [".*%.html%.jinja"] = "htmldjango",
        [".*%.html%.jinja2"] = "htmldjango",
        [".*%.html%.j2"] = "htmldjango",
      },
    })
    vim.api.nvim_create_autocmd(
      { "BufEnter", "BufWinEnter" },
      { pattern = { "*.norg" }, command = "set conceallevel=3" }
    )
  end,
}
