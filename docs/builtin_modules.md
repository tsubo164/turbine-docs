# Turbine Built-in Modules Reference

## Table of Contents

- [Turbine Built-in Modules Reference](#turbine-built-in-modules-reference)
  - [Table of Contents](#table-of-contents)
  - [`math` Module](#math-module)
    - [Constants](#constants)
    - [Functions](#functions)
    - [Example](#example)
  - [`file` Module](#file-module)
    - [Constants](#constants-1)
    - [Functions](#functions-1)
    - [Example](#example-1)
  - [`time` Module](#time-module)
    - [Constants](#constants-2)
    - [Functions](#functions-2)
    - [Example](#example-2)

## `math` Module

Provides basic mathematical functions and constants.

### Constants

| Constant Name | Type   | Description                                      |
|---------------|--------|--------------------------------------------------|
| `_PI_`        | float  | The value of π (3.14159...)                      |
| `_E_`         | float  | The value of Euler's number (e ≈ 2.71828...)     |

### Functions

| Function Signature                     | Description                                      |
|----------------------------------------|--------------------------------------------------|
| `isclose(x float, y float) bool`       | Returns `true` if `x` and `y` are approximately equal using a default tolerance.               |
| `pow(x float, y float) float`          | Returns `x` raised to the power of `y`.         |
| `sqrt(x float) float`                 | Returns the square root of `x`.                 |
| `abs(x float) float`                  | Returns the absolute value of `x`.              |
| `floor(x float) float`                | Returns the greatest integer ≤ `x`.             |
| `ceil(x float) float`                 | Returns the smallest integer ≥ `x`.             |
| `round(x float) float`                | Rounds `x` to the nearest integer.              |
| `radians(deg float) float`            | Converts degrees to radians.                    |
| `degrees(rad float) float`            | Converts radians to degrees.                    |
| `sin(x float) float`                  | Returns the sine of `x` (in radians).           |
| `cos(x float) float`                  | Returns the cosine of `x` (in radians).         |
| `tan(x float) float`                  | Returns the tangent of `x` (in radians).        |
| `asin(x float) float`                 | Returns the arcsine of `x`, in radians.         |
| `acos(x float) float`                 | Returns the arccosine of `x`, in radians.       |
| `atan(x float) float`                 | Returns the arctangent of `x`, in radians.      |
| `atan2(y float, x float) float`       | Returns the arctangent of `y/x`, in radians.    |
| `sinh(x float) float`                 | Returns the hyperbolic sine of `x`.             |
| `cosh(x float) float`                 | Returns the hyperbolic cosine of `x`.           |
| `tanh(x float) float`                 | Returns the hyperbolic tangent of `x`.          |
| `asinh(x float) float`                | Returns the inverse hyperbolic sine of `x`.     |
| `acosh(x float) float`                | Returns the inverse hyperbolic cosine of `x`.   |
| `atanh(x float) float`                | Returns the inverse hyperbolic tangent of `x`.  |
| `exp(x float) float`                  | Returns e raised to the power of `x`.           |
| `log(x float) float`                  | Returns the natural logarithm (base e) of `x`.  |
| `log10(x float) float`                | Returns the base-10 logarithm of `x`.           |
| `log2(x float) float`                 | Returns the base-2 logarithm of `x`.            |

### Example

```cpp
> math

# main() int
  - angle = math._PI_ / 4
  - s = math.sin(angle)
  - exp = math.pow(math._E_, 2)

  return 0
```

## `file` Module

Provides functions for reading and writing files.

### Constants

This module currently defines no constants.

### Functions

| Function Signature                                 | Description                                                                 |
|----------------------------------------------------|-----------------------------------------------------------------------------|
| `read_text(path string) string`                    | Reads the entire content of the file as a string.                           |
| `write_text(path string, text string) bool`        | Writes `text` to the file. Returns `true` on success.                       |
| `read_lines(path string) vec{string}`              | Reads all lines from the file and returns them as a vector. Each line **includes** its trailing newline (`\n`) if present. |
| `write_lines(path string, lines vec{string})`  | Writes each element in `lines` to the file **as-is**, without automatically appending newline characters. |

### Example

```cpp
> file

# main() int
  // Each string in `lines` may end with '\n'
  - lines = file.read_lines("input.txt")

  - ok = file.write_text("copy.txt", "Hello, world!\n")

  // No newlines are added automatically
  - count = file.write_lines("output.txt", lines)

  return 0
```

## `time` Module

Provides functions for working with time, including getting the current time, measuring elapsed time, and controlling sleep.

### Constants

This module currently defines no constants.

### Functions

| Function Signature                                 | Description                                                                 |
|----------------------------------------------------|-----------------------------------------------------------------------------|
| `now() float`                                        | Returns the current time in **seconds** since the epoch.                  |
| `perf() float`                                       | Returns a high-resolution performance counter value, useful for measuring time intervals. |
| `elapsed(start float) float`                           | Returns the time elapsed (in **seconds**) since the given `start` time.    |
| `sleep(duration float)`                         | Pauses execution for the specified `duration` (in **seconds**). |

### Example

```cpp
> time

# main() int
  - start = time.now()

  // Sleep for 1 second
  time.sleep(1.0)

  // `diff` contains the elapsed time in seconds
  - diff = time.elapsed(start)

  return 0
```