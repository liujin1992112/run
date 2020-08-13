local BaseLayer = require("app.scenes.BaseLayer")
local ChooseLayer = class("ChooseLayer", BaseLayer)

function ChooseLayer:ctor()
    local chooseLayer = cc.CSLoader:createNode("css/ChooseLayer.csb")
    chooseLayer:addTo(self)

    --当前显示的面板名称
    self.curPanelName = "main_node"

    self.mainNode = ccui.Helper:seekWidgetByName(chooseLayer, "main_node")
    self.taskNode = ccui.Helper:seekWidgetByName(chooseLayer, "task_node")
    self.settingNode = ccui.Helper:seekWidgetByName(chooseLayer, "set_node");

    self.btnBoard1 = ccui.Helper:seekWidgetByName(self.mainNode, "btn_board1")
    self.btnBoard2 = ccui.Helper:seekWidgetByName(self.mainNode, "btn_board2")
    self.initBoardY = self.btnBoard1:getPositionY()

    self.btnDailyTask = ccui.Helper:seekWidgetByName(self.mainNode, "btn_daily_task")
    self.btnSet = ccui.Helper:seekWidgetByName(self.mainNode, "btn_set")
    self.btnStart = ccui.Helper:seekWidgetByName(self.mainNode, "btn_start")
    self.btnReturnMenu = ccui.Helper:seekWidgetByName(self.mainNode, "btn_return_menu")
    self.initBtnX = self.btnDailyTask:getPositionX()


    self.taskBg = ccui.Helper:seekWidgetByName(self.taskNode, "task_bg")

    self.setBg = ccui.Helper:seekWidgetByName(self.settingNode, "set_bg")


    self.btnDailyTask:addTouchEventListener(function(sender, eventType) 
        if cc.EventCode.ENDED == eventType then
            self:showDailyNode()
        end
    end)
    self.btnSet:addTouchEventListener(function(sender, eventType) 
        if cc.EventCode.ENDED == eventType then
            self:showSetNode()
        end
    end)
    self.btnStart:addTouchEventListener(function(sender, eventType) 
        if cc.EventCode.ENDED == eventType then
            
        end
    end)
    self.btnReturnMenu:addTouchEventListener(function(sender, eventType) 
        if cc.EventCode.ENDED == eventType then
            self:backMainNode()
        end
    end)

    self:showMainNode()
end

function ChooseLayer:backMainNode()
    if self.curPanelName == "set_node" then
        self.setBg:runAction(cc.Sequence:create(cc.DelayTime:create(0.05), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-400)))));
    elseif self.curPanelName == "task_node" then
        self.taskBg:runAction(cc.Sequence:create(cc.DelayTime:create(0.05), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-300,0)))));
    end
    self.curPanelName = "main_node"
    self:showMainNode()
end

function ChooseLayer:showMainNode()
    local btnBoard1 = self.btnBoard1
    local btnBoard2 = self.btnBoard2

    local btnDailyTask = self.btnDailyTask
    local btnSet = self.btnSet
    local btnStart = self.btnStart
    local btnReturnMenu = self.btnReturnMenu

    btnReturnMenu:setPositionX(self.initBtnX + 125)

    local sleepTime = 0
    sleepTime = sleepTime + 0.05
    btnBoard1:setPositionY(self.initBoardY + 450)
    btnBoard1:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-450)))));

    sleepTime = sleepTime + 0.05
    btnBoard2:setPositionY(self.initBoardY + 450)
    btnBoard2:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-450)))));

    sleepTime = sleepTime + 0.05
    btnDailyTask:setPositionX(self.initBtnX + 140)
    btnDailyTask:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    sleepTime = sleepTime + 0.05
    btnSet:setPositionX(self.initBtnX + 140)
    btnSet:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    sleepTime = sleepTime + 0.05
    btnStart:setPositionX(self.initBtnX + 140)
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

function ChooseLayer:resetMainNode()
    local btnBoard1 = self.btnBoard1
    local btnBoard2 = self.btnBoard2

    local btnDailyTask = self.btnDailyTask
    local btnSet = self.btnSet
    local btnStart = self.btnStart
    local btnReturnMenu = self.btnReturnMenu

    local sleepTime = 0
    sleepTime = sleepTime + 0.05
    btnBoard1:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,450)))));

    sleepTime = sleepTime + 0.05
    btnBoard2:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,450)))));

    sleepTime = sleepTime + 0.05
    btnDailyTask:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(125,0)))));
    
    sleepTime = sleepTime + 0.05
    btnSet:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(125,0)))));
    
    sleepTime = sleepTime + 0.05
    btnStart:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(125,0)))));
    btnStart:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(125,0)))));

    sleepTime = sleepTime + 0.05
    btnReturnMenu:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-125,0)))));

    return sleepTime
end

function ChooseLayer:showDailyNode()
    self.curPanelName = "task_node"
    local sleepTime = self:resetMainNode();
    self.taskBg:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(300,0)))));
end

function ChooseLayer:showSetNode()
    self.curPanelName = "set_node"

    local sleepTime = self:resetMainNode();
    self.setBg:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0, 400)))));
end

return ChooseLayer