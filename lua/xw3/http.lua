
function max(num1, num2)
   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end
   return result;
end

function parse_cookies(cookie_str)
    local cookies = {}
    for pair in cookie_str:gmatch("[^;]+") do
        local name, value = pair:match("^%s*(.-)%s*=%s*(.-)%s*$")
        if name and value then
            cookies[name] = url_decode(value)
        end
    end
    return cookies
end

function url_decode(str)
    str = str:gsub('%%(%x%x)', function(h)
        return string.char(tonumber(h, 16))
    end)
    return str
end


