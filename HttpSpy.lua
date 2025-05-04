getgenv().request = http_request
local A = clonefunction(hookfunction)

local function INFO(Text, Tab)
warn("--------------------", Text, "--------------------")
for i,v in pairs(Tab) do
print(i,v)
if typeof(v) == "table" then
for i2,v2 in pairs(v) do
print(i, "|", i2, v2)
end
end
end
end

local B; B = A(request, function(...)
local C = ({...})[1]
local D = B(...)

INFO("SEND", C)
INFO("RECEIVE", D)
warn("-------------------- END --------------------\n\n")

return B(...)
end)