return {
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescript", "vue", "svelte", "jsx", "tsx", "eruby" },
    config = function()
      vim.g.user_emmet_mode = "i"
      vim.g.user_emmet_install_global = 0

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "html", "css", "javascript", "typescript", "vue", "svelte", "jsx", "tsx", "eruby" },
        callback = function()
          vim.cmd("EmmetInstall")
          vim.keymap.set("i", ",,", "<C-y>,", { buffer = true, silent = true })
        end,
      })
    end,
  },
}
