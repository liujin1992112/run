local BaseLayer = require("app.scenes.BaseLayer")
local ChooseLayer = class("ChooseLayer", BaseLayer)

function ChooseLayer:ctor()
    cc.CSLoader:createNode("ChooseLayer.csb"):addTo(self)
end

return ChooseLayer