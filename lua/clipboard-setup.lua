vim.opt.clipboard = 'unnamedplus'



local function is_windows()
    local sysname = vim.loop.os_uname().sysname:lower()
    return sysname:find("windows", 1, true) ~= nil 
end

if is_windows() then
-- For WSL
 vim.g.clipboard = {
     name = 'wayland-strip-carriage',
     copy = {
         ['+'] = 'win32yank.exe -i --crlf',
         ['*'] = 'win32yank.exe -i --crlf',
     },
     paste = {
         ['+'] = 'win32yank.exe -o --lf',
         ['*'] = 'win32yank.exe -o --lf',
     },
     cache_enabled = 0,
 }
else
    vim.g.clipboard = {
    name = 'wayland-strip-carriage',
    copy = {
        ['+'] = 'wl-copy --foreground --type text/plain',
        ['*'] = 'wl-copy --foreground --type text/plain --primary',
    },
    paste = {
        ['+'] = function() return vim.fn.systemlist('wl-paste --no-newline | tr -d "\r"') end,
        ['*'] = function() return vim.fn.systemlist('wl-paste --no-newline --primary | tr -d "\r"') end,
    },
    cache_enabled = 1,
}
end


