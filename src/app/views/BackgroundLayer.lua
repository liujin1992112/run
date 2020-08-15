local BaseLayer = require("app.scenes.BaseLayer")
local BackgroundLayer = class("BackgroundLayer", BaseLayer)

function BackgroundLayer:ctor()
    self.backgroundLayer = cc.CSLoader:createNode("css/BackgroundLayer.csb")
    self.backgroundLayer:addTo(self)

    self.forgroundNode = ccui.Helper:seekWidgetByName(self.backgroundLayer, "forground_node")
    self.cloudNode = ccui.Helper:seekWidgetByName(self.backgroundLayer, "cloud_node")

end

function BackgroundLayer:move() 
end

return BackgroundLayer