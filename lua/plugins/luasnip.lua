return {
  "L3MON4D3/LuaSnip",
  enabled = true,
  opts = function(_, opts)
    local ls = require("luasnip")

    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node

    local function clipboard()
      return vim.fn.getreg("+")
    end

    local snippets = {}

    local utils = require("config.utils")
    if utils.has_work() then
      local work_snippets = require("config.work.snippets") -- Adjust the path accordingly if necessary
      for _, snippet in ipairs(work_snippets) do
        table.insert(snippets, snippet)
      end
    end

    ls.add_snippets("all", snippets)

    -- #####################################################################
    --                            Markdown
    -- #####################################################################

    table.insert(
      snippets,
      s({
        trig = "linkt",
        name = 'Add this -> [](){:taget="_blank"}',
        desc = 'Add this -> [](){:taget="_blank"}',
      }, {
        t("["),
        i(1),
        t("]("),
        i(2),
        t('){:target="_blank"}'),
      })
    )

    return opts
  end,
}
