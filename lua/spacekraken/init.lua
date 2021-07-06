-- Vim Color File
-- Name:       spacekraken
-- Maintainer: Nadim Edde Gomez
-- License:    The MIT License (MIT)


local function high_clear(group)
	vim.api.nvim_command('hi! clear ' .. group)
end

local function high_link(group, link)
	vim.api.nvim_command('hi! link ' .. group .. ' ' .. link)
end

local function highlight(group, styles)
	local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
	local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
	local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
	local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'

	vim.api.nvim_command(
		'hi! ' .. group .. ' ' .. bg .. ' ' .. fg .. ' ' .. sp .. ' ' .. gui
	)
end

local function apply_highlight(groups)
	for group, styles in pairs(groups) do
		highlight(group, styles)
	end
end

local c = require('spacekraken.colors')

local general_ui = {
	Normal = { fg = c.gray, bg = c.dimBackground },
	Folded = { fg = c.dimBackground3, bg = c.black },
	Error = { fg = c.darkred },
	ErrorMsg = { fg = c.darkred },
	ModeMsg = { fg = c.green },
	MatchParen = { fg = c.green, gui = 'underline' },
	Statusline = { fg = c.dimBackground, bg = c.darkgray },
	StatuslineNC = { fg = c.gray, bg = c.dimBackground2 },
	LineNr = { fg = c.dimBackground4 },
	CursorLineNr = { fg = c.gray },
	CursorLine = { bg = c.dimBackground2 },
	VertSplit = { fg = c.dimBackground3, bg = c.dimBackground },
	SignColumn = { fg = c.darkgray, bg = c.dimBackground },
	NonText = { fg = c.dimBackground3, bg = c.dimBackground },
	Todo = { fg = c.dimBackground, bg = c.green },
	Title = { fg = c.blue },
	Directory = { fg = c.blue },
	Visual = { bg = c.dimBackground3 },

	Search = { bg = c.yellow },
	IncSearch = { fg = c.dimBackground, bg = c.lightyellow },

	Pmenu = { fg = c.gray, bg = c.dimBackground3 },
	PmenuSel = { fg = c.dimBackground2, bg = c.orange },
	PmenuThumb = { bg = c.gray },

	diffAdded = { fg = c.green },
	diffRemoved = { bg = c.red },
	DiffAdd = { bg = c.diffgreen },
	DiffDelete = { bg = c.diffred },
	DiffChange = { bg = c.yellow },
	DiffText = { bg = c.diffyellow },
}

apply_highlight(general_ui)


local general_syntax = {
	Identifier = { fg = c.gray },
    Comment = { fg = c.dimBackground4 },
    PreProc = { fg = c.red },
    Special = { fg = c.green },
    Statement = { fg = c.red },
    String = { fg = c.lightblue },
    Type = { fg = c.orange },
    Function = { fg = c.purple },
    Boolean = { fg = c.blue },
    Conditional = { fg = c.red }
}

apply_highlight(general_syntax)


local treesitter = {
	TSProperty = { fg = c.blue },
	TSOperator = { fg = c.red },
	TSString = { fg = c.lightblue },
	TSNumber = { fg = c.blue },
	TSBoolean = { fg = c.blue },
	TSKeyword = { fg = c.red },
	TSKeywordFunction = { fg = c.red },
	TSKeywordOperator = { fg = c.red },
	TSStatement = { fg = c.red },
	TSInclude = { fg = c.red },
	TSVariable = { fg = c.gray },
	TSVariableBuiltin = { fg = c.blue },
	TSMethod = { fg = c.purple },
	TSFunction = { fg = c.purple },
	TSFuncMacro = { fg = c.gray },
	TSConstructor = { fg = c.gray },
	TSConstant = { fg = c.blue },
	TSConstantBuiltin = { fg = c.blue },
	TSType = { fg = c.orange },
	TSTypeBuiltin = { fg = c.gray },
	TSPunctBracket = { fg = c.gray },
	TSPunctDelimiter = { fg = c.gray },
	TSPunctSpecial = { fg = c.gray },
}

apply_highlight(treesitter)

local plugins = {
	NvimTreeRootFolder = { fg = c.green },
	LspDiagnosticsDefaultError = { fg = c.red },
}

apply_highlight(plugins)
