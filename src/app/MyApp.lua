
require("config")
require("cocos.init")
require("framework.init")

local AppBase = require("framework.AppBase")
local MyApp = class("MyApp", AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")

    --添加资源的搜索cocosstudio编辑器UI资源的路径
    cc.FileUtils:getInstance():addSearchPath("res/css")
    self:enterScene("MainScene")
end

return MyApp
