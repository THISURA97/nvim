" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "C:\\Users\\tdini\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\tdini\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\tdini\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\tdini\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\tdini\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  LeaderF = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LeaderF"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cheatsheet.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard-nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indentLine"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\numb.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-bufferline.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim"
  },
  pinkmare = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\pinkmare"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  spaceduck = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\spaceduck"
  },
  tagbar = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vifm.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes"
  },
  ["vim-bufkill"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-bufkill"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-mundo"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-polyglot"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "C:\\Users\\tdini\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-which-key"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
