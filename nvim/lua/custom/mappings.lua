---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- bytedance specific keybind for prefix logger
    ["<leader>pl"] = { "ipl := prefix_logger.NewAutoPrefix()", "prefix logger snippet" },

    -- harpoon mappings
    ["<leader>hx"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "add file to harpoon",
    },

    ["<leader>hn"] = {
      function()
        require("harpoon.ui").nav_next()
      end,
      "nav to next harpoon mark",
    },
    ["<leader>hp"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      "nav to prev harpoon mark",
    },
    ["<leader>hm"] = {
      "<cmd> Telescope harpoon marks<cr>",
      "open harpoon marks",
    },
  },
}

-- more keybinds!

return M
