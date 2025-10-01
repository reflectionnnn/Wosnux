--!strict

local Token = require("./Lexer/Token")

local function StringIndex(operand_string: string, index: number): string?
	return string.sub(operand_string, index, index)
end

local Lexer = {}
Lexer.__index = Lexer

export type Lexer = typeof(setmetatable(
	{} :: {
		Code: string,
		Tokens: { Token.Token },

		Position: number,
		Line: number,
		Column: number,
	},
	Lexer
))

function Lexer.new(code: string): Lexer
	local self = setmetatable({}, Lexer) :: Lexer

	self.Code = JSONEncode(code) -- To detect new lines and other symbols
	self.Tokens = {}

	self.Position = 0
	self.Line = 0
	self.Column = 0

	return self
end

function Lexer.Advance(self: Lexer): boolean
	local nextIndex = self.Position + 1

	-- Return code if we reached end line
	if nextIndex > #self.Code then
		return false
	end

	if StringIndex(self.Code, nextIndex) == "\n" then
		self.Line += 1
	end

	self.Column += 1
	self.Position = nextIndex

	return true
end

function Lexer.Tokenize(self: Lexer)
	-- TODO
	self.Tokens = {}
end

return Lexer
