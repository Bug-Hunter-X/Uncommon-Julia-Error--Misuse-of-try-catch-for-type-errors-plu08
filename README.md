# Uncommon Julia Error: Misuse of try-catch for type errors

This repository demonstrates a common error in Julia related to type stability and an uncommon error involving misuse of try-catch blocks for type errors.

## Common Error: Type Instability

The `my_function` in `bug.jl` is not type-stable. The return type depends on the input type.  While it works for numeric input, calling it with a non-numeric type will lead to type instability and performance issues in larger codebases. 

## Uncommon Error: Misuse of try-catch

The `try-catch` block attempts to catch type errors. However,  Julia's type system usually prevents the code from executing to the point where the catch block would be reached.  A more appropriate solution uses explicit type checking or multiple dispatch.

## Solution:  Using `isa` for type checking

The `bugSolution.jl` file demonstrates a solution to this problem. It explicitly checks the input type using `isa` before performing calculations. This enhances robustness and prevents errors due to unexpected input types.