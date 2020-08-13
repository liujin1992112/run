
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    -- local isFirstPlay = cc.UserDefault:getBoolForKey("isFirstPlay", false)
    -- if isFirstPlay == false then
        
    -- end
    -- self:initFirstData();
    
    --将签到界面添加到主场景上
    local signLayer = app:createView("SignLayer")
    signLayer:addTo(self)

end

function MainScene:onEnter()
end

function MainScene:onExit()
end

function MainScene:initFirstData()
    local isFirstPlay = cc.UserDefault:getBoolForKey("isFirstPlay", false)
    if isFirstPlay == false then
        print("initFirstData")
        cc.UserDefault:setBoolForKey("isFirstPlay", true);
		
		cc.UserDefault:setBoolForKey("isCar", false);
		cc.UserDefault:setBoolForKey("isShoes", false);
		cc.UserDefault:setBoolForKey("isGlass", false);
		cc.UserDefault:setBoolForKey("isMoney", false);

		cc.UserDefault:setBoolForKey("isMusic", true);
		cc.UserDefault:setBoolForKey("isSound", true);

		cc.UserDefault:setIntegerForKey("contentGold", 0);
		cc.UserDefault:setIntegerForKey("bestLenth", 0);
		cc.UserDefault:setIntegerForKey("bestScore", 0);

		cc.UserDefault:setIntegerForKey("preDays", 0);

		cc.UserDefault:setBoolForKey("isChooseOnCar", false);

		cc.UserDefault:setBoolForKey("isGetTask", false);
    end
end

return MainScene
