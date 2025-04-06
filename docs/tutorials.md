# Turbine Tutorials

## Table of Contents

- [Turbine Tutorials](#turbine-tutorials)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Hello, World!](#hello-world)
    - [Indentation and Block Structure](#indentation-and-block-structure)
    - [Line Breaks Inside Expressions](#line-breaks-inside-expressions)
    - [Comments](#comments)
  - [Variables and Data Types](#variables-and-data-types)
    - [Basic Types](#basic-types)
    - [Compound Types](#compound-types)
    - [Variable Declaration](#variable-declaration)
    - [Type Inference](#type-inference)
  - [Expressions and Arithmetic Operators](#expressions-and-arithmetic-operators)
    - [Arithmetic Operators](#arithmetic-operators)
    - [Comparison Operators](#comparison-operators)
    - [Logical Operators](#logical-operators)
    - [Bitwise Operators](#bitwise-operators)
  - [Statements](#statements)
    - [if Statement](#if-statement)
    - [for Statement](#for-statement)
    - [while Statement](#while-statement)
    - [break Statement](#break-statement)
    - [continue Statement](#continue-statement)
    - [switch Statement](#switch-statement)
    - [return Statement](#return-statement)
    - [nop Statement](#nop-statement)
  - [Function Definition](#function-definition)
  - [Calling Functions](#calling-functions)
  - [Scope](#scope)
  - [Module Import](#module-import)
    - [Built-in Modules](#built-in-modules)
    - [User-defined Modules](#user-defined-modules)

## Introduction
Turbine is a lightweight, high-performance programming language
designed for simplicity and clarity. It offers a structured
yet flexible syntax, making it easy to read and write.
Turbine emphasizes direct solutions to problems rather than
complex abstractions.

## Hello, World!
The following example demonstrates a simple "Hello, World!" program in Turbine.

```cpp
// Prints "Hello, World!" to the console
# main(args vec{string}) int
  print("Hello, World!")
  return 0
```

- `# main(args vec{string}) int` → Defines the main function.
  - `args vec{string}` → Represents command-line arguments as a vector of strings.
  - `int` → The function returns an integer, typically `0` for successful execution.
- `print("Hello, World!")` → Calls the built-in `print` function to output text.
- `return 0` → Indicates successful execution.

### Indentation and Block Structure

Turbine uses **indentation-based** syntax to define code blocks, similar to Python. Code that belongs to the same block (such as inside functions, loops, or conditionals) must be indented consistently.

There are no `{}` or `begin`/`end` markers—indentation alone determines structure.

```cpp
if x > 0
  print("Positive")
  print("Above zero")
```

### Line Breaks Inside Expressions
Line breaks are ignored inside parentheses `()`, braces `{}`, and brackets `[]`. This allows long expressions or collection literals to be split over multiple lines:

```cpp
- nums vec{int} = vec{
  10,
  20,
  30,
  40
}
```
This makes it easy to write readable, multi-line data structures or function arguments.

### Comments

Turbine supports two types of comments:

- **Single-line comment**: Begins with `//` and continues to the end of the line.
- **Multi-line comment**: Begins with `/*` and ends with `*/`. These can span multiple lines.

```cpp
// This is a single-line comment

/* 
  This is a 
  multi-line comment 
*/
```

## Variables and Data Types
Turbine uses explicit type declarations for variables. The syntax follows a straightforward pattern:

```cpp
- x int = 42
- name string = "Turbine"
- numbers vec{int} = vec{1, 2, 3}
- config map{string, int} = map{"max": 100, "min": 1}
```

### Basic Types
- `int` → Integer values.
- `float` → Floating-point numbers.
- `string` → Textual data.
- `bool` → Boolean values (`true` or `false`).

### Compound Types
- `vec{T}` → Dynamic array (vector) of type `T`.
- `map{K, V}` → Key-value dictionary with keys of type `K` and values of type `V`.
- `set{T}` → Unordered collection of unique values.
- `stack{T}` → Last-in-first-out (LIFO) collection of elements of type T.
- `queue{T}` → First-in-first-out (FIFO) collection of elements of type T.

### Variable Declaration
Variables are declared using the `-` symbol, followed by the variable name, type, and optional initialization.

```cpp
- age int
- pi float = 3.14
- message string = "Hello"
```

If a variable is declared without an initializer, it is assigned a default value:
- `int` → `0`
- `float` → `0.0`
- `string` → `""` (empty string)
- `bool` → `false`
- `vec`, `map`, `set` → Empty collections

### Type Inference
Turbine supports type inference, allowing you to omit the type when an initializer is provided:

```cpp
- e = 2.71828  // Inferred as float
- greeting = "Hello"  // Inferred as string
```

## Expressions and Arithmetic Operators

Turbine supports standard arithmetic and comparison operators. Expressions are evaluated using operator precedence similar to most C-like languages.

### Arithmetic Operators

| Operator | Description         | Example       |
|----------|---------------------|---------------|
| `+`      | Addition             | `a + b`       |
| `-`      | Subtraction          | `a - b`       |
| `*`      | Multiplication       | `a * b`       |
| `/`      | Division             | `a / b`       |
| `%`      | Remainder (modulo)   | `a % b`       |

### Comparison Operators

| Operator | Description         | Example       |
|----------|---------------------|---------------|
| `==`     | Equal to             | `a == b`      |
| `!=`     | Not equal to         | `a != b`      |
| `<`      | Less than            | `a < b`       |
| `<=`     | Less than or equal   | `a <= b`      |
| `>`      | Greater than         | `a > b`       |
| `>=`     | Greater or equal     | `a >= b`      |

### Logical Operators

| Operator | Description         | Example       |
|----------|---------------------|---------------|
| `&&`     | Logical AND         | `a and b`     |
| `\|\|`   | Logical OR          | `a or b`      |
| `!`      | Logical NOT         | `not a`       |

Expressions can be combined and grouped with parentheses `()` as needed:

```cpp
- x = (a + b) * 2
- result = not (x > 0 and y < 0)
```

### Bitwise Operators

Turbine supports common bitwise operators for integer values:

| Operator | Description          | Example      |
|----------|----------------------|--------------|
| `&`      | Bitwise AND          | `a & b`      |
| `\|`     | Bitwise OR           | `a \| b`     |
| `^`      | Bitwise XOR          | `a ^ b`      |
| `~`      | Bitwise NOT          | `~a`         |
| `<<`     | Left shift           | `a << 1`     |
| `>>`     | Right shift          | `a >> 2`     |

Bitwise operations are performed on the binary representation of integer operands.

```cpp
- a int = 6       // binary: 110
- b int = 3       // binary: 011

print(a & b)      // 2 (010)
print(a | b)      // 7 (111)
print(a ^ b)      // 5 (101)
print(~a)         // -7 (two's complement)
print(a << 1)     // 12 (1100)
print(b >> 1)     // 1 (001)
```

## Statements

Turbine provides various statements to define the flow and structure of your program. These include conditional branches, loops, and control flow modifiers.

### if Statement

Executes code based on a condition:

```cpp
if x > 0
  print("Positive")
elif x < 0
  print("Negative")
else
  print("Zero")
```

### for Statement

The `for` statement has several syntaxes based on the collection type being iterated over.

**Range-based loop**

Iterates from a start to a stop value (stop value is **not** included). An optional step value can be included by adding , step after the range.

```cpp
for i in 0..5
  print(i)  // prints 0 to 4

for i in 10..0, -2
  print(i)  // prints 10, 8, 6, 4, 2
```

**Vector loop**

You can iterate over a vec in two ways:

```cpp
for val in v
  print(val)

for i, val in v
  print(i, ":", val)
```

- The first form gives only the element value.
- The second form gives both the index and the value.

**Map loop**

You can iterate over entries of a map in the order they were added:

```cpp
for key, val in config with i
  print(key, "=", val)

for val in config
  print(val)
```

- The first form gives both the key and value, with an optional index.
- The second form gives just the value.

**Set loop**

Loops over elements of a set in the order of the element's values:

```cpp
for val in s
  print(val)
```
- Elements are visited in the order of their value (sorted order depending on type).

**Stack loop**

Loops over elements of a stack in the order they were pushed, from bottom to top:

```cpp
for val in stk
  print(val)
```
- Note: This does not pop elements; it just iterates over contents.

**Queue loop**

Loops over elements of a queue in the order they were enqueued, from front to back:

```cpp
for val in q
  print(val)
```
- Like with stack, this iteration is non-destructive.

### while Statement

The while loop repeatedly executes a block of code as long as the specified condition remains true.

```cpp
i = 0
while i < 5
  print(i)
  i = i + 1
```

The loop starts by checking the condition (i < 5). If it’s true, the loop body executes. The condition is checked again after each iteration, and the loop continues until the condition is false.

### break Statement

The break statement exits from the nearest loop, causing the program to continue after the loop ends.

```cpp
for i in 1..10
  if i == 5
    break  // Exits the loop when i equals 5
  print(i)
```

### continue Statement

The continue statement skips the current iteration of the loop and moves to the next iteration.

```cpp
for i in 1..10
  if i == 5
    continue  // Skips the iteration when i equals 5
  print(i)
```

The break statement terminates the loop entirely, while continue skips the current loop iteration but allows the loop to continue.

### switch Statement

The switch statement evaluates an expression and selects the block of code to execute based on matching values. It does not fall through.

```cpp
switch op
  case "+"
    print(a + b)
  case "-"
    print(a - b)
  default
    print("Unknown operator")
```

- case → Defines a possible value for the expression being evaluated. The code block under the case executes if the value matches the switch expression.
- default → Provides a fallback code block if none of the case values match. It is optional but useful for handling unexpected cases.

### return Statement
The return statement ends the execution of a function and sends a value back to the caller.

```cpp
# square(x int) int
  return x * x
```
- Use return followed by the value you want to return.
- If no value is expected, the function is assumed to return void.
- In functions returning no value, the return statement can be omitted entirely.

```cpp
# log_message(msg string)
  print("Log:", msg)
```
You may still write return explicitly if you want to exit early, but it’s not required at the end of a void function.

### nop Statement

The `nop` statement does nothing. It serves as a placeholder when a statement is required syntactically but no action should be taken.

```cpp
if debug
  nop  // intentionally do nothing
```
- Useful in conditional branches or loops where no operation is needed.
- Can be used to reserve space for future code.

## Function Definition

Functions in Turbine are declared using the # symbol followed by the function signature. Each function can have zero or more parameters, and it must specify a return type.

```cpp
# add(a int, b int) int
  return a + b
```

- `# add(a int, b int) int` → Defines a function named add that takes two integers and returns an integer.
- `return a + b` → Returns the sum of a and b.

You can omit the return type if the function doesn't return a value:

```cpp
# greet(name string)
  print("Hello, " + name)
```

## Calling Functions

Functions are called using their name and arguments:

```cpp
- result int = add(3, 5)
greet("Turbine")
```

## Scope

Turbine supports nested scopes using `---`:

```cpp
- x int = 10

---
  - y int = 5
  print(x + y)
---
  print(x)
  // y is not accessible here
```

- Variables declared in a scope are local to that scope.
- Outer variables are accessible inside inner scopes, but not vice versa.

## Module Import

Turbine allows you to import built-in or user-defined modules using the > symbol.

### Built-in Modules
To import a built-in module, you use the > symbol followed by the module name:

```cpp
> math
```

For example, math provides standard mathematical functions like sqrt and constants like _PI_.

Once imported, you can access these functions and constants using the module name as a prefix:

```cpp
math.sqrt(16)  // Returns 4.0
math._PI_      // Accesses the value of PI
```

### User-defined Modules
If you have a user-defined module (a source file in the same directory), you can import it by specifying its name (without the file extension):

```cpp
> my_module
```

You can then access the symbols defined within the module in a similar way:

```cpp
my_module.some_function()
my_module._MY_CONSTANT_
```