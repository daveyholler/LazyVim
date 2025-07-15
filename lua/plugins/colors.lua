return {
  {
    "webhooked/kanso.nvim",
    opts = {
      transparent = true,
      theme = "zen",
      overrides = function(colors)
        return {
          -- Remove underline from URLs inside JS strings
          ["@string.special.url.javascript"] = { underline = false },
          ["@markup.link.label.javascript"] = { underline = false },
          -- Example: customize String color (optional)
        }
      end,
    },
  },
  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso-ink",
    },
  },
}
