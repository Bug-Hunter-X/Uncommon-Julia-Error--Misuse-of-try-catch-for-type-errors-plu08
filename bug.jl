```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

result = my_function(-5)
println(result) # Output: 5

result = my_function(5)
println(result) # Output: 25

# Uncommon Error:
# Suppose we want to handle potential errors in a more robust way, but we misuse the `try-catch` block.

try
  result = my_function("abc")
  println(result)
catch
  println("Error: Invalid input")
end
```