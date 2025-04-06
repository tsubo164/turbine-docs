# Reference of Turbine Built-in Functions

## Table of Contents

- [Reference of Turbine Built-in Functions](#reference-of-turbine-built-in-functions)
  - [Table of Contents](#table-of-contents)
  - [I/O and General Utilities](#io-and-general-utilities)
    - [`print(...)`](#print)
    - [`input(prompt string) string`](#inputprompt-string-string)
    - [`format(fmt string, ...) string`](#formatfmt-string--string)
    - [`exit(code int)`](#exitcode-int)
  - [String Functions](#string-functions)
    - [`strlen(s string) int`](#strlens-string-int)
  - [Vector Functions](#vector-functions)
    - [`veclen(v vec{T}) int`](#veclenv-vect-int)
    - [`vecpush(v vec{T}, val T)`](#vecpushv-vect-val-t)
    - [`vecclear(v vec{T})`](#vecclearv-vect)

## I/O and General Utilities

This page documents built-in functions related to input/output and general-purpose operations in Turbine.

### `print(...)`

Prints values to standard output. Each argument is converted to a string and printed in order, separated by spaces. A newline is added at the end.

```cpp
print("Hello, ", "world!")  // => Hello, world!
```

### `input(prompt string) string`

Displays the given prompt and reads a single line of input from the user. Returns the input as a string.

```cpp
- name string = input("Enter your name: ")
print("Hello, ", name)
```

### `format(fmt string, ...) string`

Returns a formatted string using C-style format specifiers in the format string. Supported specifiers:

| Specifier | Meaning         | Example                 |
|-----------|------------------|--------------------------|
| `%s`      | string           | `"Alice"` → `"Alice"`   |
| `%d`      | integer          | `42` → `"42"`           |
| `%f`      | float (default precision) | `3.14` → `"3.140000"` |
| `%%`      | literal percent  | _none_ → `"%"`          |

Arguments after the format string are substituted into the format specifiers in order.

```cpp
- msg string = format("Hello, %s. You are %d years old.", "Alice", 30)
print(msg)  // => Hello, Alice. You are 30 years old.
```

### `exit(code int)`

Terminates the script with the given exit code. This function always requires an explicit integer argument.

```cpp
- err bool = true

if err
    print("Fatal error.")
    exit(1)

exit(0)
```

## String Functions

### `strlen(s string) int`

Returns the number of characters in the given string.

**Example**

```cpp
- n = strlen("hello")
  print(n) // => 5
```

## Vector Functions

### `veclen(v vec{T}) int`

Returns the number of elements in the vector.

**Example**

```cpp
- v = vec{10, 20, 30}
  print(veclen(v)) // => 3
```

### `vecpush(v vec{T}, val T)`

Appends a value to the end of the vector.

**Example**

```cpp
- v = vec{}
  vecpush(v, 42)
  vecpush(v, 99)
  print(v) // => vec{42, 99}
```

### `vecclear(v vec{T})`

Removes all elements from the vector.

**Example**

```cpp
- v = vec{1, 2, 3}
  vecclear(v)
  print(veclen(v)) // => 0
```