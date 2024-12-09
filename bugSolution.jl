```julia
function my_function(x)
  if isa(x, Number)
    if x > 0
      return x^2
    else
      return -x
    end
  else
    error("Invalid input: x must be a number.")
  end
end

result = my_function(-5)
println(result) # Output: 5

result = my_function(5)
println(result) # Output: 25

try
  result = my_function("abc")
  println(result)
catch e
  println("Error: ", e)
  #More robust error handling: You can log the error, provide more specific feedback to user, etc. 
end
```