local BaseLayer = require("app.scenes.BaseLayer")
local ChooseLayer = class("ChooseLayer", BaseLayer)

function ChooseLayer:ctor()
    local chooseLayer = cc.CSLoader:createNode("css/ChooseLayer.csb")
    chooseLayer:addTo(self)

    self.mainNode = ccui.Helper:seekWidgetByName(chooseLayer, "main_node")

    self.btnDailyTask = ccui.Helper:seekWidgetByName(self.mainNode, "btn_daily_task")
    self.btnSet = ccui.Helper:seekWidgetByName(self.mainNode, "btn_set")
    self.btnStart = ccui.Helper:seekWidgetByName(self.mainNode, "btn_start")
    self.btnReturnMenu = ccui.Helper:seekWidgetByName(self.mainNode, "btn_return_menu")

    local onBtnClickCB = function(sender, eventType) 
        if cc.EventCode.ENDED == eventType then
            dump(sender)
            print(sender.name)
        end
    end

    self.btnDailyTask:addTouchEventListener(onBtnClickCB)
    self.btnSet:addTouchEventListener(onBtnClickCB)
    self.btnStart:addTouchEventListener(onBtnClickCB)
    self.btnReturnMenu:addTouchEventListener(onBtnClickCB)

    self:showMainNode()
end

function ChooseLayer:showMainNode()
    local btnBoard1 = ccui.Helper:seekWidgetByName(self.mainNode, "btn_board1")
    local btnBoard2 = ccui.Helper:seekWidgetByName(self.mainNode, "btn_board2")

    local btnDailyTask = self.btnDailyTask
    local btnSet = self.btnSet
    local btnStart = self.btnStart
    local btnReturnMenu = self.btnReturnMenu

    btnReturnMenu:setPositionX(btnReturnMenu:getPositionX() + 125)

    local sleepTime = 0
    sleepTime = sleepTime + 0.05
    btnBoard1:setPositionY(btnBoard1:getPositionY() + 400)
    btnBoard1:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-400)))));

    sleepTime = sleepTime + 0.05
    btnBoard2:setPositionY(btnBoard2:getPositionY() + 400)
    btnBoard2:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-400)))));

    btnDailyTask:setPositionX(btnDailyTask:getPositionX() + 140)
    btnDailyTask:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    btnSet:setPositionX(btnSet:getPositionX() + 140)
    btnSet:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    btnStart:setPositionX(btnStart:getPositionX() + 140)
    btnStart:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    --玩家是否选择车
    local isChooseOnCar = cc.UserDefault:getInstance():getBoolForKey("isChooseOnCar")
    if isChooseOnCar == true then
        btnBoard1:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,-20)),2),cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,20)),2))));
        btnBoard2:setBright(false)
    else 
        btnBoard1:setBright(false)
        btnBoard2:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,-20)),2),cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,20)),2))));
    end

    --是否有任务需要完成
    local isGetTask = cc.UserDefault:getInstance():getBoolForKey("isGetTask", false)
    local tan = ccui.Helper:seekWidgetByName(btnDailyTask, "tan")
    if isGetTask == false then
        tan:setVisible(true)
        tan:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.DelayTime:create(1), cc.JumpBy:create(0.3,cc.p(0,0),20,2))));
    else
        tan:setVisible(false)
    end
end

return ChooseLayer