REV = {}
REV.path = SMODS.current_mod.path

local content_files = NFS.getDirectoryItems(REV.path .. "mod")
for _, item in ipairs(content_files) do
    local f, err = SMODS.load_file("content/" .. item)
    if err then error(err) elseif f then f() end
end