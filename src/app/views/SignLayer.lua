local DateUtil = require("app.utils.DateUtil")
local BaseLayer = require("app.scenes.BaseLayer")

--签到界面
local SignLayer = class("SignLayer", BaseLayer)

--签到位置
local signXY = {
    cc.p(352, 480 - 91 - 18),
    cc.p(450, 480 - 91 - 18),
    cc.p(549, 480 - 91 - 18),
    cc.p(647, 480 - 91 - 18),
    cc.p(402, 480 - 201 - 18),
    cc.p(500, 480 - 201 - 18),
    cc.p(599, 480 - 201 - 18),
}

function SignLayer:ctor()
    --加载签到csb界面
    local signLayer = cc.CSLoader:createNode("css/SignLayer.csb")
    signLayer:addTo(self)

    --给签到按钮绑定点击事件
    local btnSign = signLayer:getChildByName("btn_sign")
    btnSign:addTouchEventListener(function(sender, eventType)
        if cc.EventCode.ENDED == eventType then
            self:onBtnTodaySign()
        end
    end)

    self:isShowSign()
end

function SignLayer:isShowSign()
    local preDay = cc.UserDefault:getInstance():getIntegerForKey("preDay", 0)     
    local keepDay = cc.UserDefault:getInstance():getIntegerForKey("keepDay", 0)   --连续签到天数

    for i = 1, keepDay do
        local pos = signXY[i]
        display.newSprite("sign/signSign.png", pos.x, pos.y):addTo(self)
    end

    --注意:table的下表从1开始
    --获取今天是一年中第几天
    local pos;
    local contentDay = DateUtil.getDays();
    if contentDay == preDay + 1 then
        --连续签到
        pos = signXY[keepDay + 1]
    elseif contentDay == preDay then
        --今天尚未签到
        pos = signXY[keepDay]
    else
        keepDay = 1
        pos = signXY[keepDay]
    end

    local markSign = ccui.Helper:seekWidgetByName(self, "mark_sign");
    markSign:setPosition(pos.x - 30, pos.y - 20)
    markSign:setVisible(true);
end

function SignLayer:onBtnTodaySign()
    --按钮一般有三种状态：常用，点击，禁用，并且对应可设置三种不同的纹理图标。
    --当需要设置禁用状态时，setTouchEnabled(false)还是不显示禁用的纹理，此时需要setBright(false)才行。
    local btnSign = ccui.Helper:seekWidgetByName(self, "btn_sign");
    btnSign:setBright(false)
end

return SignLayer