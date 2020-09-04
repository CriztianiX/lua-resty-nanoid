local nanoid = require("nanoid")

print("GENERATE: " .. nanoid.generate(2))
print("SIMPLE: " .. nanoid.simple())
print("SAFE SIMPLE: " .. nanoid.safe_simple())