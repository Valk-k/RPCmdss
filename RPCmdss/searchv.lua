AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/sv" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2 Searches Vehicle (What Comes Back?) ^7|^2 " .. name .. ' ^7(' .. source .. ')', { 255, 0, 0 }, string.sub(msg,5))
	end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end