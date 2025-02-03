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
  print(a, b, c) // > 0 42 77
  return 0
```

### Primitive types
```cpp
# main(args []string) int
  - b = false       // bool
  - i = 42          // int
  - f = 3.14        // float
  - s = "foo"       // string
  print(b, i, f, s) // > false 42 3.14 foo
  return 0
```

### Collection types
```cpp
# main(args []string) int
  - l = [11, 22, 33]           // list of int
  - m = {"foo":42, "bar":99}   // map of string => int
  print(l)                     // > [11, 22, 33]
  print(m)                     // > {foo:42, bar:99}
  return 0
```

### Struct type
```cpp
## Point struct
  - x float
  - y float

# main(args []string) int
  - p = Point{x=11.1, y=22.2}  // Point struct
  print(p)                     // > {11.1, 22.2}
  return 0
```

### Enum type
```cpp
## Month enum
  - symbol , name         , num
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

# main(args []string) int
  - m = Month.Oct  // Month enum
  print(m)         // > Oct
  print(m.name)    // > October
  print(m.num)     // > 10
  return 0
```
