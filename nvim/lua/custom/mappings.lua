---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- bytedance specific keybind for prefix logger
    ["<leader>pl"] = { "ipl := prefix_logger.NewAutoPrefix()", "prefix logger snippet" },
  },
}

-- more keybinds!

return M
