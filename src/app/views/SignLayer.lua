local BaseLayer = require("app.scenes.BaseLayer")

--签到界面
local SignLayer = class("SignLayer", BaseLayer)

--签到位置
local signXY = {
    cc.p(252 - 10,480 - 191 - 18),
    cc.p(350 - 10,480 - 191 - 18),
    cc.p(449 - 10,480 - 191 - 18),
    cc.p(547 - 10,480 - 191 - 18),
    cc.p(302 - 10,480 - 301 - 18),
    cc.p(400 - 10,480 - 301 - 18),
    cc.p(499 - 10,480 - 301 - 18),
}

function SignLayer:ctor()
    --加载签到csb界面
    local signLayer = cc.CSLoader:createNode("css/SignLayer.csb")
    signLayer:addTo(self)

    --给签到按钮绑定点击事件
    local btnSign = signLayer:getChildByName("btn_sign")
    btnSign:addTouchEventListener(function(sender, eventType)
        if 2 == eventType then
        end
    end)

    -- self:isShowSign()
end

function SignLayer:isShowSign()
    console.log(signXY)
    local preDay = cc.UserDefault:getIntegerForKey("preDay", 0)     
    local keepDay = cc.UserDefault:getIntegerForKey("keepDay", 0)   --连续签到天数
    for i = 1, keepDay do
        local xy = signXY[i]
        display.newSprite("sign/signSign", xy.x, xy.y):addTo(self)
    end

end

return SignLayer