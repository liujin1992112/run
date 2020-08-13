local BaseLayer = require("app.scenes.BaseLayer")
local ChooseLayer = class("ChooseLayer", BaseLayer)

function ChooseLayer:ctor()
    local chooseLayer = cc.CSLoader:createNode("ChooseLayer.csb")
    chooseLayer:addTo(self)
end

return ChooseLayer