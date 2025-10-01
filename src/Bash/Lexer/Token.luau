--!strict

local Token = {}
Token.__index = Token

export type Token = typeof(setmetatable({} :: {}, Token))

function Token.new(): Token
	local self = setmetatable({}, Token) :: Token
	return self
end

return Token
