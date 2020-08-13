local BaseLayer = require("app.scenes.BaseLayer")
local MainLayer = class("MainLayer", BaseLayer)

--注意:lua的静态函数调用采用:掉用   lua的成员函数采用.调用
function MainLayer:ctor()
    local mainLayer = cc.CSLoader:createNode("MainLayer.csb")
    mainLayer:addTo(self)

    local lufei1 = ccui.Helper:seekWidgetByName(mainLayer, "lufei_1")
    local lufei2 = ccui.Helper:seekWidgetByName(mainLayer, "lufei_2")
    local title = ccui.Helper:seekWidgetByName(mainLayer, "title")

    lufei2:runAction(cc.Sequence:create(cc.DelayTime:create(1), cc.FadeOut:create(1), cc.RemoveSelf:create()))
    lufei1:runAction(cc.Sequence:create(cc.DelayTime:create(2.2), cc.Spawn:create(cc.MoveBy:create(0.3, cc.p(200, 0)))))
    title:runAction(cc.Sequence:create(cc.FadeOut:create(0), cc.DelayTime:create(2.2), cc.FadeIn:create(0.3)))
	title:runAction(cc.RepeatForever:create(cc.Sequence:create(
            cc.EaseInOut:create(cc.MoveBy:create(1, cc.p(0, -10)), 2), 
            cc.EaseInOut:create(cc.MoveBy:create(1, cc.p(0, 10)), 2)
        )))

    audio.playBGMSync("music/background1.ogg", true)

    local onTouchListener = function(evt)
        if evt.name == "ended" then
            --进入选择界面
            app:createView("ChooseLayer"):addTo(self)
        end
        return true
    end

    title:addNodeEventListener(cc.NODE_TOUCH_EVENT, onTouchListener)
    title:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
    title:setTouchEnabled(true) --注意:必须先注册事件,然后再开启触摸

end


return MainLayer