return {
  "zbirenbaum/copilot.lua",
  -- enabled = false,
  event = "VeryLazy", -- Prevents auto-start on every buffer
  opts = {
    suggestion = {
      enabled = false,
    },
    panel = {
      enabled = false,
    },
    filetypes = {
      markdown = false, -- disable in Markdown
      [""] = false,     -- disable in buffers without filetype
      help = false,
    },
  }
}
