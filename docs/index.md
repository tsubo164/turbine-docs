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

### Collection types
```cpp
# main(args []string) int
  - l = [11, 22, 33]           // list of int
  - m = {"foo":42, "bar":99}   // map of string => int
  print(l)                     // prints "[11, 22, 33]"
  print(m)                     // prints "{foo:42, bar:99}
  return 0
```

### Struct type
```cpp
## Point struct
  - x float
  - y float

# main(args []string) int
  - p = Point{x:11, y:22}   // Point struct
  print(p)                  // prints "{x:42, y:99}
  return 0
```
