local BaseLayer = require("app.scenes.BaseLayer")
local MainLayer = class("MainLayer", BaseLayer)

function MainLayer:ctor()
    local mainLayer = cc.CSLoader:createNode("MainLayer.csb")
    mainLayer:addTo(self)

    audio.playBGMSync("music/background1.ogg", true)

end


return MainLayer