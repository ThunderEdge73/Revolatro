REV = {}
REV.path = "" .. SMODS.current_mod.path
REV.color_joker_order = {
    "j_rev_red",
    "j_rev_orange",
    "j_rev_yellow",
    "j_rev_green",
    "j_rev_turquoise",
    "j_rev_cyan",
    "j_rev_blue",
    "j_rev_purple",
    "j_rev_pink",
    "j_rev_white"
}

to_big = to_big or function (x)
    return x
end

local content_files = NFS.getDirectoryItems(REV.path .. "content")
for _, item in ipairs(content_files) do
    local f, err = SMODS.load_file("content/" .. item)
    if err then error(err) elseif f then f() end
end