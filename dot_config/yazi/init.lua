function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)

	if time == 0 then
		time = ""
	else
		time = os.date("%Y-%m-%d %a %I:%M:%S %p", time)
	end

	local size = self._file:size()

	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end

ps.sub("ind-app-title", function(args)
  	-- starting Yazi with --chooser-file means it's running as a file picker
  	if rt.args.chooser_file then
    	args.value = "File picker: " .. tostring(cx.active.current.cwd)
  	else
    	args.value = tostring(cx.active.current.cwd)
  	end

  	return args
end)
