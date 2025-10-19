# Turbine Tutorials

## Table of Contents

- [Turbine Tutorials](#turbine-tutorials)
  - [Table of Contents](#table-of-contents)
  - [Hello, World!](#hello-world)
    - [Indentation and Block Structure](#indentation-and-block-structure)
    - [Line Breaks Inside Expressions](#line-breaks-inside-expressions)
    - [Comments](#comments)
  - [Variables and Data Types](#variables-and-data-types)
    - [Basic Types](#basic-types)
    - [Collection Types](#collection-types)
    - [Variable Declaration](#variable-declaration)
    - [Type Inference](#type-inference)
    - [Variable Scope](#variable-scope)
    - [Global Variables](#global-variables)
    - [Literals](#literals)
  - [Expressions and Arithmetic Operators](#expressions-and-arithmetic-operators)
    - [Arithmetic Operators](#arithmetic-operators)
    - [Comparison Operators](#comparison-operators)
    - [Logical Operators](#logical-operators)
    - [Bitwise Operators](#bitwise-operators)
  - [Statements](#statements)
    - [`if` Statement](#if-statement)
    - [`for` Statement](#for-statement)
    - [`while` Statement](#while-statement)
    - [`break` Statement](#break-statement)
    - [`continue` Statement](#continue-statement)
    - [`switch` Statement](#switch-statement)
    - [`return` Statement](#return-statement)
    - [`nop` Statement](#nop-statement)
  - [Functions](#functions)
    - [Function Definition](#function-definition)
    - [Calling Functions](#calling-functions)
  - [Structures](#structures)
    - [Defining a Structure](#defining-a-structure)
    - [Creating and Accessing Structures](#creating-and-accessing-structures)
    - [Nested Structures](#nested-structures)
    - [Passing Structs to Functions](#passing-structs-to-functions)
  - [Enums](#enums)
    - [Defining an Enum](#defining-an-enum)
    - [Using Enum Values](#using-enum-values)
  - [Module Import](#module-import)
    - [Built-in Modules](#built-in-modules)
    - [User-defined Modules](#user-defined-modules)
  - [Built-in Functions](#built-in-functions)
    - [I/O Functions](#io-functions)
    - [Collection Functions](#collection-functions)
  - [FizzBuzz Example](#fizzbuzz-example)

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

### Collection Types
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

### Variable Scope

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

### Global Variables

Global variables are declared the same way as local variables but must be named using a single underscore on both sides, such as _count_ or _CONFIG_. This naming convention is required to clearly distinguish globals from local variables.

```cpp
- _count_ int = 0
- _CONFIG_ = map{"timeout": 30, "max": 100}
```

Global variables are accessible throughout the entire module and can be shared across imported modules.

### Literals

Turbine allows you to assign values directly using literals. These include numbers, strings, booleans, and also collection values like vectors or maps.

**Basic Type Literals**

```cpp
- i int = 42
- f float = 3.14
- s string = "hello"
- b bool = true
```

You can explicitly specify the type, but in most cases it's simpler and more common to let Turbine infer the type from the literal:

```cpp
- i = 42        // inferred as int
- name = "Bob"  // inferred as string
- ok = true     // inferred as bool
```

**Collection Literals**

To define a collection, write the type name followed by a pair of braces `{}` containing the elements.

```cpp
- v vec{int} = vec{1, 2, 3}
- m = map{"a": 1, "b": 2}
- s = set{3, 1, 2}
- k = stack{1, 2, 3}
- q = queue{"x", "y", "z"}
```

Use commas to separate elements. For maps, each key is followed by a colon : and its value.

You can also spread the contents across multiple lines. Line breaks inside the braces are ignored, which helps keep code readable.

```cpp
- m = map{
    "width": 100,
    "height": 200,
    "depth": 50
  }
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
| `||`     | Logical OR          | `a or b`      |
| `!`      | Logical NOT         | `not a`       |

Expressions can be combined and grouped with parentheses `()` as needed:

```cpp
- x = (a + b) * 2
- result = !(x > 0 && y < 0)
```

### Bitwise Operators

Turbine supports common bitwise operators for integer values:

| Operator | Description          | Example      |
|----------|----------------------|--------------|
| `&`      | Bitwise AND          | `a & b`      |
| `|`      | Bitwise OR           | `a | b`      |
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

### `if` Statement

Executes code based on a condition:

```cpp
if x > 0
  print("Positive")
elif x < 0
  print("Negative")
else
  print("Zero")
```

### `for` Statement

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
- v = vec{10, 20, 30}

for val in v
  print(val)  // 10, 20, 30

for i, val in v
  print(i, ":", val)  // 0 : 10, 1 : 20, 2 : 30
```

- The first form gives only the element value.
- The second form gives both the index and the value.

**Map loop**

You can iterate over entries of a map in the order they were added:

```cpp
- config = map{"max": 100, "min": 1, "step": 5}

for key, val in config with i
  print(key, "=", val)  // max = 100, min = 1, step = 5

for val in config
  print(val)  // 100, 1, 5
```

- The first form gives both the key and value, with an optional index.
- The second form gives just the value.

**Set loop**

Loops over elements of a set in the order of the element's values:

```cpp
- myset = set{2, 1, 3}

for val in myset
  print(val)  // 1, 2, 3
```

- Elements are visited in the order of their value (sorted order depending on type).

**Stack loop**

Loops over elements of a stack in the order they were pushed, from bottom to top:

```cpp
- mystack = stack{1, 2, 3}

for val in mystack
  print(val)  // 1, 2, 3
```

- Note: This does not pop elements; it just iterates over contents.

**Queue loop**

Loops over elements of a queue in the order they were enqueued, from front to back:

```cpp
- myqueue = queue{"a", "b", "c"}

for val in myqueue
  print(val)  // a, b, c
```

- Like with stack, this iteration is non-destructive.

### `while` Statement

The while loop repeatedly executes a block of code as long as the specified condition remains true.

```cpp
i = 0
while i < 5
  print(i)
  i = i + 1
```

The loop starts by checking the condition (i < 5). If it’s true, the loop body executes. The condition is checked again after each iteration, and the loop continues until the condition is false.

### `break` Statement

The break statement exits from the nearest loop, causing the program to continue after the loop ends.

```cpp
for i in 1..10
  if i == 5
    break  // Exits the loop when i equals 5
  print(i)
```

### `continue` Statement

The continue statement skips the current iteration of the loop and moves to the next iteration.

```cpp
for i in 1..10
  if i == 5
    continue  // Skips the iteration when i equals 5
  print(i)
```

The break statement terminates the loop entirely, while continue skips the current loop iteration but allows the loop to continue.

### `switch` Statement

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

### `return` Statement
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

### `nop` Statement

The `nop` statement does nothing. It serves as a placeholder when a statement is required syntactically but no action should be taken.

```cpp
if debug
  nop  // intentionally do nothing
```
- Useful in conditional branches or loops where no operation is needed.
- Can be used to reserve space for future code.

## Functions

### Function Definition

Functions in Turbine are declared using the `#` symbol followed by the function signature. Each function can have zero or more parameters, and it can specify a return type. 

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

### Calling Functions

To call a function, use the function name followed by the arguments in parentheses:

```cpp
- result int = add(3, 5)
greet("Turbine")
```

### Out Parameters

You can use out parameters to return an additional result by modifying a variable passed by reference.
An out parameter is declared with `&` before its name:

```cpp
# divide(a int, b int, &ok bool) int
  if b == 0
    ok = false
    return 0
  ok = true
  return a / b
```

When calling a function with an out parameter, prefix the variable with `&`:

```cpp
- success bool
- result int = divide(10, 2, &success)
```

Nested calls are also allowed:

```cpp
# foo(a int, &ok bool) int
  ok = true
  return 2 * a

# bar(&ok bool) int
  return foo(42, &ok)
```

The following rules apply to out parameter:

- Must refer to a local variable.
- Must be assigned or passed again as an out argument inside the function.
- After the call, the variable must be used before being passed again as an out argument, or before leaving its scope.
- Passing a non-out parameter as an out argument is not allowed.
- Expressions such as arr[i] or obj.field cannot be passed as out arguments.


## Structures

In Turbine, a structure (`struct`) is a composite data type that groups together related values. You define a struct using a section header with the struct name followed by `struct`.

### Defining a Structure

A struct definition starts with a heading like `## Point struct`, and its fields are declared below using the `-` syntax:

```cpp
## Point struct
  - x int
  - y int
```

This defines a struct Point with two fields: x and y, both of type int.

### Creating and Accessing Structures

To create and use struct values, write the struct name followed by field initializers in braces `{}`, using `=` to assign values.

```cpp
# main()
  - p = Point{x = 10, y = 20}
  print(p.x)  // Outputs: 10
  print(p.y)  // Outputs: 20
```

### Nested Structures

You can define structs that include other structs:

```cpp
## Circle struct
  - center Point
  - radius float

# main()
  - c = Circle{center = Point{x = 5, y = 5}, radius = 10.0}
  print(c.center.x)  // Outputs: 5
  print(c.radius)    // Outputs: 10.0
```

This defines a `Circle` struct with a `Point` field named center and a `float` field named radius.

### Passing Structs to Functions

Structs can be passed to functions like any other value. Here's an example of a function that takes a `Circle` and returns its area:

```cpp
# CircleArea(c Circle) float
  return 3.14 * c.radius * c.radius

# main()
  - c = Circle{center = Point{x = 0, y = 0}, radius = 10.0}
  - a = CircleArea(c)
  print(a)  // Outputs: 314.0
```

This function computes the area of the circle using the formula `πr²` (with `π` approximated as 3.14).

## Enums

Enums in Turbine are user-defined types that represent a fixed set of named values. Each enum value can also store additional fields.

### Defining an Enum

An enum definition starts with a heading like `## Month enum`, followed by a **header row** that defines the field names. The header row must begin with a colon `:`:

```cpp
## Month enum
  : tag    , name         , num
  - Jan    , "January"    , 1
  - Feb    , "February"   , 2
  - Mar    , "March"      , 3
  - Apr    , "April"      , 4
  - May    , "May"        , 5
  - Jun    , "June"       , 6
  - Jul    , "July"       , 7
  - Aug    , "August"     , 8
  - Sep    , "September"  , 9
  - Oct    , "October"    , 10
  - Nov    , "November"   , 11
  - Dec    , "December"   , 12
```

This defines an `enum Month` with 12 values, each having a `tag`, a string `name`, and an integer `num`.

### Using Enum Values

Enum values can be accessed using dot(`.`) notation and their fields can be read just like struct fields:

```cpp
# main(args vec{string}) int
  - m = Month.Oct
  print(m)        // > Oct
  print(m.name)   // > October
  print(m.num)    // > 10
  return 0
```

You can also define enums with floating-point fields. Here's an example for difficulty levels in a game:

```cpp
## Difficulty enum
  : tag        , damage_coeff, time_coeff
  - EASY       , 0.5         , 1.5
  - NORMAL     , 1.0         , 1.0
  - HARD       , 1.5         , 0.8
  - NIGHTMARE  , 2.5         , 0.5

# main(args vec{string}) int
  - d = Difficulty.HARD
  print(d)              // > 2
  print(d.tag)          // > HARD
  print(d.damage_coeff) // > 1.5
  print(d.time_coeff)   // > 0.8
  return 0
```

This can be useful for adjusting game logic or configuration based on predefined modes.

## Module Import

Turbine allows you to import built-in or user-defined modules using the `>` symbol.

### Built-in Modules
To import a built-in module, you use the `>` symbol followed by the module name:

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

## Built-in Functions

Turbine provides several built-in functions that are useful for basic input/output operations and working with collections. Below are some examples.

### I/O Functions
Turbine provides built-in functions for input and output operations. Below are some examples:

```cpp
- name string
- age int = 25

// Printing to the console
print("Hello, World!")           // Prints "Hello, World!"
print("Name: ", name)             // Prints "Name: " followed by the value of 'name'
print("Age: ", age)               // Prints "Age: 25"

// Reading input from the user
name = input("Enter your name: ") // Prompts user to enter their name

// Formatting output
formatted = format("Hello, %s! You are %d years old.", name, age)
print(formatted)                  // Prints the formatted string
```

Example Output:

```
Hello, World!
Name: John
Age: 25
Hello, John! You are 25 years old.
```

### Collection Functions

Turbine provides several built-in functions for working with collections such as vectors, maps, and stacks. Some examples are as follows:

```cpp
- v = vec{10, 20, 30}
- m = map{"key1": 1, "key2": 2}
- s = stack{1, 2, 3}

// Vector functions
vecpush(v, 40)        // Adds 40 to the end of the vector
print(veclen(v))      // Prints the length of the vector (4)
print(v)              // Prints the contents of the vector

// Stack functions
stackpop(s)           // Pops the top element from the stack (3)
print(s)              // Prints the updated stack {1, 2}

// Map functions
print(mapkeys(m))     // Prints the keys of the map {key1, key2}
```

Example Output:

```
{10, 20, 30, 40}
4
{1, 2}
{key1, key2}
```

These are just a few examples of the functions available for collection manipulation. For more advanced operations, refer to the library reference.

## FizzBuzz Example

To wrap up this tutorial, here is a complete FizzBuzz program written in Turbine. It demonstrates the basics of variable declaration, control flow, arithmetic, and output:

```cpp
# main(args vec{string}) int
  for i in 1..100
    if i % 15 == 0
      print("FizzBuzz")
    elif i % 3 == 0
      print("Fizz")
    elif i % 5 == 0
      print("Buzz")
    else
      print(i)
  return 0
```

This simple example uses:
- `for` loop with a numeric range (`1..100`)
- `%` operator for modulo
- `if`, `elif`, and `else` for conditional logic
- `print()` function for output

With this, you should now be ready to write real Turbine code.
For more advanced functionality, refer to the [Built-in Function Reference](builtin_functions.md) and the [Built-in Module Reference](builtin_modules.md).
