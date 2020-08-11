local DateUtil = {}

-- 计算出今天是一年中的第几天
function DateUtil.getDays()
    local year = os.date("%Y")
    local month = os.date("%m")
    local day = os.date("%d")

    local leapYear = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}       --闰年
    local commonYear = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}     --平年
    local templateYear = 0
    local count = 0
    if year % 400 == 0 or year % 4 == 0 and year % 100 ~= 0 then
        templateYear = leapYear
    else
        templateYear = commonYear
    end

    for i = 1, month - 1 do 
        count = count + templateYear[i] 
    end
    return count
end

return DateUtil
