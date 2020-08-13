--封装BaseLayer基类,继承自Layout
local BaseLayer = class("BaseLayer", function()
    return ccui.Layout:create()
end)

function BaseLayer:ctor()
	self:setContentSize(cc.size(display.width, display.height))
	self:setTouchEnabled(false)
	self:setBackGroundColor(cc.c3b(0x3c, 0x3c, 0x3c))
	self:setBackGroundColorType(1)
end

return BaseLayer