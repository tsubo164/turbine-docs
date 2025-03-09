# Turbine programming language

## Language Overview

- Statically typed
- Procedural programming
- Explicit, markdown-like syntax

## Implementation

- Compiles to bytecode
- Executed on the Virtual Machine
- Compler and VM are written in C11

## Table of Contents
- [Language at a Glance](#language_at_a_glance)
- [Tutorials](tutorials.md)
- References
- Language Specification
- Bytecode Specification

## Language at a Glance {#language_at_a_glance}

### Hello, World!

```cpp
// Prints "Hello, World" in console
# main(args vec{string}) int
  print("Hello, World!")
  return 0
```

### Variables
```cpp
# main(args vec{string}) int
  - a int        // int with default value zero
  - b = 42       // int type from initializer type
  - c int = 77   // verbose with both type and initializer
  print(a, b, c) // > 0 42 77
  return 0
```

### Primitive types
```cpp
# main(args vec{string}) int
  - b = false       // bool
  - i = 42          // int
  - f = 3.14        // float
  - s = "foo"       // string
  print(b, i, f, s) // > false 42 3.14 foo
  return 0
```

### Collection types
```cpp
# main(args vec{string}) int
  - v = vec{11, 22, 33}             // vector of int
  - m = map{"foo":42, "bar":99}     // map of string => int
  - s = set{212.09, 584.23, 927.32} // set of float
  - k = stack{int}                  // stack of int
  - q = queue{string}               // queue of string
  print(v)                          // > {11, 22, 33}
  print(m)                          // > {foo:42, bar:99}
  print(s)                          // > {foo:42, bar:99}
  print(k)                          // > {}
  print(q)                          // > {}
  return 0
```

### Struct type
```cpp
## Point struct
  - x float
  - y float

# main(args vec{string}) int
  - p = Point{x=11.1, y=22.2} // Point struct
  print(p)                    // > {11.1, 22.2}
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

# main(args vec{string}) int
  - m = Month.Oct // Month enum
  print(m)        // > Oct
  print(m.name)   // > October
  print(m.num)    // > 10
  return 0
```

### Module
```cpp
> math

# main(args vec{string}) int
  print(math._PI_)     // > 3.14159
  print(math.sqrt(25)) // > 5
  return 0
```
