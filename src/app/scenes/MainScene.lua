
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    local isFirstPlay = cc.UserDefault:getInstance():getBoolForKey("isFirstPlay", false)
    if isFirstPlay == false then
        --首次进入游戏，初始化首次进入游戏的数据
        self:initFirstData()
    end
    
    --将签到界面添加到主场景上
    local signLayer = app:createView("SignLayer")
    if signLayer:isShowSign() then
        
        signLayer:addTo(self)
    else
        --今天已经签到
        app:createView("MainLayer"):addTo(self)
    end

end

function MainScene:preladMusic()

end

function MainScene:onEnter()
end

function MainScene:onExit()
end

function MainScene:initFirstData()
    local instance = cc.UserDefault:getInstance()
    local isFirstPlay = instance:getBoolForKey("isFirstPlay", false)
    if isFirstPlay == false then
        instance:setBoolForKey("isFirstPlay", true)

        instance:setBoolForKey("isCar", false)
		instance:setBoolForKey("isShoes", false)
		instance:setBoolForKey("isGlass", false)
		instance:setBoolForKey("isMoney", false)

		instance:setBoolForKey("isMusic", true)
		instance:setBoolForKey("isSound", true)

		instance:setIntegerForKey("contentGold", 0)
		instance:setIntegerForKey("bestLenth", 0)
		instance:setIntegerForKey("bestScore", 0)

		instance:setIntegerForKey("preDays", 0)

		instance:setBoolForKey("isChooseOnCar", false)

		instance:setBoolForKey("isGetTask", false)
    end
end

return MainScene
