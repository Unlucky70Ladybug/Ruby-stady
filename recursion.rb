def factorial(n)
  n > 0 ? n*factorial(n-1) : 1
end
puts factorial(5)
