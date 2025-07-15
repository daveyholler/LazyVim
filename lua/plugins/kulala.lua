-- ~/.config/nvim/lua/plugins/kulala.lua
-- kulala.nvim - Better HTTP client with file inclusion support

return {
  {
    "mistweaverco/kulala.nvim",
    config = function()
      require("kulala").setup({
        -- HTTP client configuration
        default_view = "body", -- body|headers
        default_env = "dev",
        debug = false,
        contenttypes = {
          ["application/json"] = {
            ft = "json",
            formatter = { "jq", "." },
          },
          ["application/xml"] = {
            ft = "xml",
            formatter = { "xmllint", "--format", "-" },
          },
          ["text/html"] = {
            ft = "html",
            formatter = { "tidy", "-i", "-q", "--show-errors", "0" },
          },
        },
        show_icons = "on_request", -- on_request|above_request|below_request|none
        icons = {
          inlay = {
            loading = "⏳",
            done = "✅",
            error = "❌",
          },
          lualine = "🐼",
        },
        additional_curl_options = {},
      })
    end,
    ft = "http",
    keys = {
      { "<leader>rr", "<cmd>lua require('kulala').run()<cr>", desc = "Execute request", ft = "http" },
      { "<leader>ra", "<cmd>lua require('kulala').run_all()<cr>", desc = "Execute all requests", ft = "http" },
      { "<leader>ri", "<cmd>lua require('kulala').inspect()<cr>", desc = "Inspect request", ft = "http" },
      { "<leader>rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle response view", ft = "http" },
      { "<leader>rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request", ft = "http" },
      { "<leader>rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request", ft = "http" },
      { "<leader>rb", "<cmd>!node scripts/build-requests.js<cr>", desc = "Build GraphQL requests", ft = "http" },
      {
        "<leader>rg",
        function()
          vim.cmd("!node scripts/build-requests.js")
          require("kulala").run()
        end,
        desc = "Build and run GraphQL request",
        ft = "http",
      },
    },
  },
}
