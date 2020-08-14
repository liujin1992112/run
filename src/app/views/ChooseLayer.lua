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

    self.cbSwitchEffect = ccui.Helper:seekWidgetByName(self.settingNode, "cb_switch_effect")
    self.cbSwitchMusic = ccui.Helper:seekWidgetByName(self.settingNode, "cb_switch_music")
    self.effectPoint = ccui.Helper:seekWidgetByName(self.settingNode, "effect_point")
    self.musicPoint = ccui.Helper:seekWidgetByName(self.settingNode, "music_point")
    self.initCbX = self.effectPoint:getPositionX()

    local onBtnClickCallback = function(sender, eventType)
        if cc.EventCode.ENDED == eventType then
            if sender == self.btnBoard1 then
                cc.UserDefault:getInstance():setBoolForKey("isChooseOnCar", false)
                self:refreshChooseCarBtn()
            elseif sender == self.btnBoard2 then
                cc.UserDefault:getInstance():setBoolForKey("isChooseOnCar", true)   --选择带车的主角
                self:refreshChooseCarBtn()
            elseif sender == self.btnDailyTask then
                self:showDailyNode()
                audio.playEffectSync("music/page.ogg")
            elseif sender == self.btnSet then
                self:showSetNode()
                audio.playEffectSync("music/page.ogg")
            elseif sender == self.btnStart then
                audio.playEffectSync("music/bow.ogg")
                app:createView("LoadingLayer"):addTo(self)
            elseif sender == self.btnReturnMenu then
                self:backMainNode()
                audio.playEffectSync("music/page.ogg")
            elseif sender == self.cbSwitchEffect then
                local isSelected = not self.cbSwitchEffect:isSelected()
                print("cbSwitchEffect  " , isSelected)
                self.cbSwitchEffect:setSelected(isSelected)
                cc.UserDefault:getInstance():setBoolForKey("isSound", isSelected)
                self:refreshSetNode()
            elseif sender == self.cbSwitchMusic then
                local isSelected = not self.cbSwitchMusic:isSelected()
                self.cbSwitchMusic:setSelected(isSelected)
                print("cbSwitchMusic  " , isSelected)
                cc.UserDefault:getInstance():setBoolForKey("isMusic", isSelected)
                self:refreshSetNode()
            else
            end
        end
    end

    self.btnBoard1:addTouchEventListener(onBtnClickCallback)
    self.btnBoard2:addTouchEventListener(onBtnClickCallback)
    self.btnDailyTask:addTouchEventListener(onBtnClickCallback)
    self.btnSet:addTouchEventListener(onBtnClickCallback)
    self.btnStart:addTouchEventListener(onBtnClickCallback)
    self.btnReturnMenu:addTouchEventListener(onBtnClickCallback)
    self.cbSwitchEffect:addTouchEventListener(onBtnClickCallback)
    self.cbSwitchMusic:addTouchEventListener(onBtnClickCallback)

    

    self.effectPoint:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        
    end)
    self.effectPoint:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
    self.effectPoint:setTouchEnabled(true) --注意:必须先注册事件,然后再开启触摸

    self.musicPoint:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
    end)
    self.musicPoint:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
    self.musicPoint:setTouchEnabled(true) --注意:必须先注册事件,然后再开启触摸

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
    btnBoard2:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0,-450))), cc.CallFunc:create(function() 
        self:refreshChooseCarBtn()  --刷新玩家是否选择车状态
    end)));

    sleepTime = sleepTime + 0.05
    btnDailyTask:setPositionX(self.initBtnX + 140)
    btnDailyTask:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    sleepTime = sleepTime + 0.05
    btnSet:setPositionX(self.initBtnX + 140)
    btnSet:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

    sleepTime = sleepTime + 0.05
    btnStart:setPositionX(self.initBtnX + 140)
    btnStart:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(-140,0)))));

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

--刷新选择车按钮的状态
function ChooseLayer:refreshChooseCarBtn()
    local isChooseOnCar = cc.UserDefault:getInstance():getBoolForKey("isChooseOnCar")
    if isChooseOnCar == true then
        self.btnBoard2:stopAllActions()
        self.btnBoard2:setPositionY(self.initBoardY)

        self.btnBoard1:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,-20)),2),cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,20)),2))));
        self.btnBoard1:setBright(true)
        self.btnBoard2:setBright(false)
    else
        self.btnBoard1:stopAllActions()
        self.btnBoard1:setPositionY(self.initBoardY)

        self.btnBoard1:setBright(false)
        self.btnBoard2:setBright(true)
        self.btnBoard2:runAction(cc.RepeatForever:create(cc.Sequence:create(cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,-20)),2),cc.EaseInOut:create(cc.MoveBy:create(0.7,cc.p(0,20)),2))));
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
    self:refreshSetNode()
    
    -- ccui.CheckBox:create():setChe

    local sleepTime = self:resetMainNode();
    self.setBg:runAction(cc.Sequence:create(cc.DelayTime:create(sleepTime), cc.EaseBackOut:create(cc.MoveBy:create(0.3, cc.p(0, 400)))));
end

function ChooseLayer:refreshSetNode()
    local isMusic = cc.UserDefault:getInstance():getBoolForKey("isMusic")
    local isSound = cc.UserDefault:getInstance():getBoolForKey("isSound")

    self.cbSwitchMusic:setSelected(isMusic)
    self.cbSwitchEffect:setSelected(isSound)
    if isMusic == true then
        self.musicPoint:setPositionX(self.initCbX)
    else
        self.musicPoint:setPositionX(self.initCbX + 22)
    end

    if isSound == true then
        self.effectPoint:setPositionX(self.initCbX)
    else
        self.effectPoint:setPositionX(self.initCbX + 22)
    end
end

return ChooseLayer