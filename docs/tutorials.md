# Turbine Tutorials

## Table of Contents

- [Turbine Tutorials](#turbine-tutorials)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Hello, World!](#hello-world)
  - [Variables and Data Types](#variables-and-data-types)
    - [Basic Types](#basic-types)
    - [Compound Types](#compound-types)
    - [Variable Declaration](#variable-declaration)
    - [Type Inference](#type-inference)
  - [Statements](#statements)
    - [if Statement](#if-statement)
    - [for Statement](#for-statement)
    - [while Statement](#while-statement)
    - [break Statement](#break-statement)
    - [continue Statement](#continue-statement)
    - [switch Statement](#switch-statement)

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

## Statements

Turbine provides standard control flow statements to direct the execution of your program.

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