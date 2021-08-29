hs.loadSpoon('Caps2Esc'):start()
hs.loadSpoon('DownloadAtp'):start('/Volumes/U5/Datacasts')
hs.loadSpoon('RightLayout'):add("Alacritty", "ABC"):add("Slack", "Russian"):start()

--hs.loadSpoon("ReloadConfiguration")
--spoon.ReloadConfiguration:start()

local function catcher(event)
    if event:getFlags()['cmd'] and event:getCharacters() == "h" then
        return true, {hs.eventtap.event.newScrollEvent({3, 0}, {}, "line")}
    elseif event:getFlags()['cmd'] and event:getCharacters() == "l" then
        return true, {hs.eventtap.event.newScrollEvent({-3, 0}, {}, "line")}
    elseif event:getFlags()['cmd'] and event:getCharacters() == "j" then
        return true, {hs.eventtap.event.newScrollEvent({0, -3}, {}, "line")}
    elseif event:getFlags()['cmd'] and event:getCharacters() == "k" then
        return true, {hs.eventtap.event.newScrollEvent({0, 3}, {}, "line")}
    end
end
hs.eventtap.new({hs.eventtap.event.types.keyDown}, catcher):start()

--hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
--end)

--hs.hotkey.bind({"cmd"}, "return", function() hs.application.launchOrFocus("Alacritty") end)
