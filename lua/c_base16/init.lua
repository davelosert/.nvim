if(not vim.g.vscode)
  then
    local base16 = require "base16"
    base16(base16.themes["solarized-dark"], true)
end
