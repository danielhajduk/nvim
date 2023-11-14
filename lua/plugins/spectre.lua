return {
  'nvim-pack/nvim-spectre',
  keys = {
    { "<C-S>", function() require("spectre").open() end, desc = "Replace in files (Spectre)" }
  }
}
