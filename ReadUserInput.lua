-- To ignore the warning, 'duplicate-index' from lines 4 and 10.
---@diagnostic disable: duplicate-index

local input = {
  --- Reads the user's input and returns the input.
  ReadUserInput = function()
      return io.read()
  end,
  --- Reads the user's input and returns the input in a function.
  --- @param func fun(UserInput:string) The function to return the user's input.
  ReadUserInput = function(func)
      func(io.read())
  end,
}

-- Example #1:
print("What's your name?")
local name = input.ReadUserInput()
print("Hi, "..name.."!")

-- Example #2
print("What's your ID?")
input.ReadUserInput(function(id)
    print("So, your ID is "..id..", I assume.")
end)
