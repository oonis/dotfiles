function open(name)
  return function()
      hs.application.launchOrFocus(name)
      if name == 'Finder' then
          hs.appfinder.appFromName(name):activate()
      end
  end
end

local hyper = {"ctrl","cmd","option","shift"}

hs.hotkey.bind(hyper, "t", open("iTerm"))
hs.hotkey.bind(hyper,"s", open("Safari"))
hs.hotkey.bind(hyper,"c",open("Visual Studio Code"))
