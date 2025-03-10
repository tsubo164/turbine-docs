# Turbine Programming Language

## Introduction
Turbine is a lightweight, high-performance programming language
designed for simplicity and clarity. It offers a structured
yet flexible syntax, making it easy to read and write.
Turbine emphasizes direct solutions to problems rather than
complex abstractions.

## Tutorials

### Hello, World!
The following example demonstrates a simple "Hello, World!" program in Turbine.

```cpp
// Prints "Hello, World!" to the console
# main(args vec{string}) int
  print("Hello, World!")
  return 0
```

#### Explanation
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