--封装BaseLayer基类,继承自Layout
local BaseLayer = class("BaseLayer", function()
    return ccui.Layout:create()
end)

function BaseLayer:ctor()
	self:setAnchorPoint(display.CENTER)
	self:setContentSize(cc.size(display.width, display.height))
	self:setTouchEnabled(false)
	self:setBackGroundColor(cc.c3b(0x3c, 0x3c, 0x3c))
	self:setBackGroundColorType(1)

	cc.TextureCache:getInstance():dump()
end

function BaseLayer:alignCenter(layer) 
	local startX = (display.width - display.widthInPixels) / 2
	local startY = (display.height - display.heightInPixels) / 2
	layer:setPosition(startX, startY)
end

return BaseLayer