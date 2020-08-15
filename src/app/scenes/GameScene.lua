local GameScene = class("GameScene", function()
    return display.newScene("GameScene")
end)

function GameScene:ctor()
    app:createView("BackgroundLayer"):addTo(self)
end

function GameScene:onEnter()
end

function GameScene:onExit()
end

return GameScene