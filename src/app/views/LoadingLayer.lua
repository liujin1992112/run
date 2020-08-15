local BaseLayer = require("app.scenes.BaseLayer")
local LoadingLayer = class("LoadingLayer", BaseLayer)

function LoadingLayer:ctor()
    local loadingLayer = cc.CSLoader:createNode("css/LoadingLayer.csb")
    loadingLayer:addTo(self)

    local path = string.format("loading/tips%d.png", math.random(1, 2))
    local sp = display.newSprite(path)
    local spTips = ccui.Helper:seekWidgetByName(loadingLayer, "sp_tips")
    spTips:setSpriteFrame(sp:getSpriteFrame())

    --加载CocosStudio 1.x的骨骼动画
    --加载动画所用到的数据
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("css/armature/Run0.png","css/armature/Run0.plist","css/armature/Run.ExportJson");
    local armature = ccs.Armature:create("Run")  -- 创建动画对象
    armature:setScale(0.2)
    armature:setPosition(700,50)                    -- 设置位置
    armature:getAnimation():playWithIndex(0, 0, 1)        -- 设置动画对象执行的动画名称
    self:addChild(armature, 1)

    self:runAction(cc.Sequence:create(cc.DelayTime:create(3), cc.CallFunc:create(function()
        local gameScene = import("app.scenes.GameScene").new()
        display.replaceScene(gameScene)
    end)))
end

return LoadingLayer