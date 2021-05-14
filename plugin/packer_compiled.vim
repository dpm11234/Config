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
local package_path_str = "/home/mau/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mau/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mau/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mau/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mau/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  MatchTagAlways = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/MatchTagAlways"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  dracula = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf-checkout.vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/fzf-checkout.vim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/html5.vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  neoformat = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["tagalong.vim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/tagalong.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-be-good"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-doge"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-flog"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-flog"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-gitignore"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-gitignore"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-hexokinase"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vimpeccable"
  },
  vimspector = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vimspector"
  },
  vipsql = {
    loaded = true,
    path = "/home/mau/.local/share/nvim/site/pack/packer/start/vipsql"
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
