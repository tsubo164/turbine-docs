# Turbine programming language

## Language in 5 mins

### Hello, World!

```cpp
// Prints "Hello, World" in console
# main(args []string) int
  print("Hello, World!")
  return 0
```

### Variables
```cpp
# main(args []string) int
  - a int        // int with default value zero
  - b = 42       // int type from initializer type
  - c int = 77   // verbose with both type and initializer
  print(a, b, c) // prints "0 42 77"
  return 0
```

### Primitive types
```cpp
# main(args []string) int
  - b = false       // bool
  - i = 42          // int
  - f = 3.14        // float
  - s = "foo"       // string
  print(b, i, f, s) // prints "false 42 3.14 foo"
  return 0
```
