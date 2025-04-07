# Turbine Built-in Functions Reference

## Table of Contents

- [Turbine Built-in Functions Reference](#turbine-built-in-functions-reference)
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
  - [Map Functions](#map-functions)
    - [`maplen(m map{K, V}) int`](#maplenm-mapk-v-int)
  - [Set Functions](#set-functions)
    - [`setlen(s set{T}) int`](#setlens-sett-int)
    - [`setadd(s set{T}, val T)`](#setadds-sett-val-t)
    - [`setcontains(s set{T}, val T) bool`](#setcontainss-sett-val-t-bool)
    - [`setremove(s set{T}, val T)`](#setremoves-sett-val-t)
  - [Stack Functions](#stack-functions)
    - [`stacklen(s stack{T}) int`](#stacklens-stackt-int)
    - [`stackempty(s stack{T}) bool`](#stackemptys-stackt-bool)
    - [`stackpush(s stack{T}, val T)`](#stackpushs-stackt-val-t)
    - [`stackpop(s stack{T}) T`](#stackpops-stackt-t)
    - [`stacktop(s stack{T}) T`](#stacktops-stackt-t)
  - [Queue Functions](#queue-functions)
    - [`queuelen(q queue{T}) int`](#queuelenq-queuet-int)
    - [`queueempty(q queue{T}) bool`](#queueemptyq-queuet-bool)
    - [`queuepush(q queue{T}, val T)`](#queuepushq-queuet-val-t)
    - [`queuepop(q queue{T}) T`](#queuepopq-queuet-t)
    - [`queuefront(q queue{T}) T`](#queuefrontq-queuet-t)

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
  print(v) // => {42, 99}
```

### `vecclear(v vec{T})`

Removes all elements from the vector.

**Example**

```cpp
- v = vec{1, 2, 3}
  vecclear(v)
  print(veclen(v)) // => 0
```

## Map Functions

### `maplen(m map{K, V}) int`

Returns the number of key-value pairs in the map.

**Example**

```cpp
- m = map{"a": 1, "b": 2}
  print(maplen(m)) // => 2
```

## Set Functions

### `setlen(s set{T}) int`

Returns the number of elements in the set.

**Example**

```cpp
- s = set{1, 2, 3}
  print(setlen(s)) // => 3
```

### `setadd(s set{T}, val T)`

Adds a value to the set.

**Example**

```cpp
- s = set{1, 2}
  setadd(s, 3)
  print(s) // => {1, 2, 3}
```

### `setcontains(s set{T}, val T) bool`

Returns true if the set contains the given value.

**Example**

```cpp
- s = set{1, 2, 3}
  print(setcontains(s, 2)) // => true
```

### `setremove(s set{T}, val T)`

Removes the given value from the set.

**Example**

```cpp
- s = set{1, 2, 3}
  setremove(s, 2)
  print(setcontains(s, 2)) // => false
```

## Stack Functions

### `stacklen(s stack{T}) int`

Returns the number of elements in the stack.

**Example**

```cpp
- s = stack{1, 2, 3}
  print(stacklen(s)) // => 3
```

### `stackempty(s stack{T}) bool`

Returns true if the stack is empty.

**Example**

```cpp
- s = stack{1, 2}
  print(stackempty(s)) // => false
  stackpop(s)
  stackpop(s)
  print(stackempty(s)) // => true
```

### `stackpush(s stack{T}, val T)`

Pushes a value onto the top of the stack.

**Example**

```cpp
- s = stack{}
  stackpush(s, 42)
  stackpush(s, 99)
  print(s) // => {42, 99}
```

### `stackpop(s stack{T}) T`

Removes and returns the top element of the stack.

**Example**

```cpp
- s = stack{1, 2, 3}
  - top = stackpop(s)
  print(top) // => 3
  print(s) // => {1, 2}
```

### `stacktop(s stack{T}) T`

Returns the top element of the stack without removing it.

**Example**

```cpp
- s = stack{1, 2, 3}
  print(stacktop(s)) // => 3
```

## Queue Functions

### `queuelen(q queue{T}) int`

Returns the number of elements in the queue.

**Example**

```cpp
- q = queue{1, 2, 3}
  print(queuelen(q)) // => 3
```

### `queueempty(q queue{T}) bool`

Returns true if the queue is empty.

**Example**

```cpp
- q = queue{1, 2}
  print(queueempty(q)) // => false
  queuepop(q)
  queuepop(q)
  print(queueempty(q)) // => true
```

### `queuepush(q queue{T}, val T)`

Adds an element to the back of the queue.

**Example**

```cpp
- q = queue{}
  queuepush(q, "task1")
  queuepush(q, "task2")
  print(q) // => {"task1", "task2"}
```

### `queuepop(q queue{T}) T`

Removes and returns the front element of the queue.

**Example**

```cpp
- q = queue{"task1", "task2"}
  - front = queuepop(q)
  print(front) // => "task1"
  print(q) // => {"task2"}
```

### `queuefront(q queue{T}) T`

Returns the front element of the queue without removing it.

**Example**

```cpp
- q = queue{"task1", "task2"}
  print(queuefront(q)) // => "task1"
```