local hyper = {"ctrl","cmd"}

hs.loadSpoon("MiroWindowsManager")
require('shortcuts')

hs.window.animationDuration = 0.1
spoon.MiroWindowsManager:bindHotkeys({
    up = {hyper, "up"},
    right = {hyper, "right"},
    down = {hyper, "down"},
    left = {hyper, "left"},
    fullscreen = {hyper, "f"}
})
