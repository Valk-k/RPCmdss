AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/tinder" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^7[^1Tinder^7] ^7|^1 " .. name .. ' ^7(' .. source .. ')', { 255, 0, 0 }, string.sub(msg,9))
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