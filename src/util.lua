--[[
  Converts an integer to a 32-bit floating-point number (IEEE 754 SinglePrecision)
  @param value (number) The integer to convert
  @return (string) The binary representation of the floating-point number
  @return (number) The floating-point representation of the number
]]
local function int_to_single_precision(value)
  -- Ensure the input is an integer
  assert(type(value) == "number", "Input must be a number")

  -- Convert the integer to a 32-bit floating-point number
  local packed_float = string.pack("f", value) -- Pack as IEEE 754 SinglePrecision

  -- Return the packed binary data (if needed) and as a floating-point number
  local unpacked_float = string.unpack("f", packed_float)
  return packed_float, unpacked_float
end

-- Example usage
--local binary_float, float_value = int_to_single_precision(123)
--print("Binary Float:", binary_float)       -- Raw binary (useful for sending to devices)
--print("Unpacked Float:", float_value)     -- The floating-point representation
