local colors = require('spacekraken.colors')

local spacekraken = {}

spacekraken.normal = {
	a = {fg = colors.dimBackground, bg = colors.green, gui = 'bold'},
	b = {fg = colors.purple, bg = colors.dimBackground2},
	c = {fg = colors.gray, bg = colors.dimBackground2},
}

spacekraken.insert = {
	a = {fg = colors.dimBackground, bg = colors.blue, gui = 'bold'},
	b = {fg = colors.purple, bg = colors.dimBackground2},
}

spacekraken.visual = {
	a = {fg = colors.dimBackground, bg = colors.purple, gui = 'bold'},
	b = {fg = colors.purple, bg = colors.dimBackground2},
}

spacekraken.replace = {
	a = {fg = colors.dimBackground, bg = colors.red, gui = 'bold'},
	b = {fg = colors.purple, bg = colors.dimBackground2},
}

spacekraken.command = {
	a = {fg = colors.dimBackground, bg = colors.orange, gui = 'bold'},
	b = {fg = colors.purple, bg = colors.dimBackground2},
}

spacekraken.inactive = {
  a = {fg = colors.darkgray, bg = colors.dimBackground2, gui = 'bold'},
  b = {fg = colors.darkgray, bg = colors.dimBackground2},
  c = {fg = colors.darkgray, bg = colors.dimBackground2}
}

return spacekraken
