# NDArray API

## Arithmetic Operations

In the following example `y` can be a `Real` value or another `NDArray`

| API | Example  |                            |
|-----|----------|----------------------------|
| `+` | `x .+ y` | Elementwise summation      |
| `-` | `x .- y` | Elementwise minus          |
| `*` | `x .* y` | Elementwise multiplication |
| `/` | `x ./ y` | Elementwise division       |
| `^` | `x .^ y` | Elementwise power          |


## Trigonometric Functions

| API            | Example    |                             |
|----------------|------------|-----------------------------|
| [`sin`](@ref)  | `sin.(x)`  | Elementwise sine            |
| [`cos`](@ref)  | `cos.(x)`  | Elementwise cosine          |
| [`tan`](@ref)  | `tan.(x)`  | Elementwise tangent         |
| [`asin`](@ref) | `asin.(x)` | Elementwise inverse sine    |
| [`acos`](@ref) | `acos.(x)` | Elementwise inverse cosine  |
| [`atan`](@ref) | `atan.(x)` | Elementwise inverse tangent |


## Hyperbolic Functions

| API             | Example     |                                        |
|-----------------|-------------|----------------------------------------|
| [`sinh`](@ref)  | `sinh.(x)`  | Elementwise hyperbolic sine            |
| [`cosh`](@ref)  | `cosh.(x)`  | Elementwise hyperbolic cosine          |
| [`tanh`](@ref)  | `tanh.(x)`  | Elementwise hyperbolic tangent         |
| [`asinh`](@ref) | `asinh.(x)` | Elementwise inverse hyperbolic sine    |
| [`acosh`](@ref) | `acosh.(x)` | Elementwise inverse hyperbolic cosine  |
| [`atanh`](@ref) | `atanh.(x)` | Elementwise inverse hyperbolic tangent |


## Reference

```@autodocs
Modules = [MXNet.mx]
Pages = ["ndarray.jl"]
```
