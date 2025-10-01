local Lexer = {}
Lexer.__index = Lexer

export type Lexer = typeof(setmetatable(
	{} :: {
		_code: string,
		_currentCharacter: number?,
	},
	Lexer
))

function Lexer.new(code: string): Lexer
	local self = setmetatable({}, Lexer) :: Lexer

	self._code = code
	self._currentCharacter = nil

	return self
end

return Lexer
