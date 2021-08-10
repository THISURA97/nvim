local cmd = vim.cmd
local tbl_map = vim.tbl_map
local fnamemodify = vim.fn.fnamemodify

local H = {}

function H.create_augroup(group_name, definition)
  cmd('augroup ' .. group_name)
  cmd('autocmd!')
  for _, def in ipairs(definition) do
    local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
    cmd(command)
  end
  cmd('augroup END')
end

local function split_string(s, delimiter)
  local result = {}
  for match in (s..delimiter):gmatch("(.-)"..delimiter) do
      table.insert(result, match)
  end
  return result
end

-- for comma-separated strings, remove a value from the list
function H.minus_equals(setting, value)
  if setting == nil or setting == "" then
    return ""
  end

  local t = split_string(setting, ',')

  for key, val in pairs(t) do
    if val == value then
      table.remove(t, key)
    end
  end

  return table.concat(t, ',')
end

-- for comma-separated strings, add a value to the list
function H.plus_equals(setting, value)
  if setting == nil then
    setting = ""
  end

  if setting == "" then
    return value
  end

  local t = split_string(setting, ',')

  for key, val in pairs(t) do
    if val == value then
      -- value already exists in the table
      return setting
    end
  end

  table.insert(t, value)
  return table.concat(t, ',')
end

-- create_augroup('lsp_status_airline', {
--   {'User', 'AirlineAfterInit', ':lua lsp_status_airline_init()'},
-- })

function H.is_plugin_installed(check_plugin_name)
  -- http_//github.com/wbthomason/packer.nvim#checking-plugin-statuses
  -- NOTE this is only really available at the end of the packer startup
  -- function. If you try to fetch it outside of that it won't be found.
  --
  -- update: some mappings aren't getting created so I turned it off :/
  -- return packer_plugins and packer_plugins[check_plugin_name] and packer_plugins[check_plugin_name].loaded

  local _, packer = pcall(require, 'packer')
  if type(packer) == 'string' then
    -- packer is not installed
    return false
  end

  -- not pretty but it gets the job done
  local plugin_utils = require('packer.plugin_utils')
  local opt_plugins, start_plugins = plugin_utils.list_installed_plugins()

  for typ, plugin_list in ipairs({opt_plugins, start_plugins}) do
    for plugin_path, _ in pairs(plugin_list) do
      local plugin_name = fnamemodify(plugin_path, ":t")
      if (check_plugin_name == plugin_name) then
        return true
      end
    end
  end
  return false
end

function _G.dump(...)
  local objects = tbl_map(vim.inspect, {...})
  print(unpack(objects))
end

return H