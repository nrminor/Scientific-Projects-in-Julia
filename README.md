# SciTemplate

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://nrminor.github.io/SciTemplate.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://nrminor.github.io/SciTemplate.jl/dev/)
[![Build Status](https://github.com/nrminor/SciTemplate.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/nrminor/SciTemplate.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/nrminor/SciTemplate.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/nrminor/SciTemplate.jl)

Julia has one of the best ecosystems in the game for reproducible, scientific computing. Most notably, this includes:
1. the inimitable [`PkgTemplates.jl`](https://juliaci.github.io/PkgTemplates.jl/stable/) package, which autogenerates docs, a test directory, initiates git, creates a customizable `.gitignore`, and creates pre-specified Github workflows.
2. The package [`DataToolkit.jl`](https://tecosaur.github.io/DataToolkitDocs/ref/stable/), which is an extremely extensible solution to the problem of connecting data to code.
3. The code formatter [`JuliaFormatter.jl`](https://docs.juliahub.com/General/JuliaFormatter/0.3.9/), which customizably revises your code formatting to make it more readable, similar to `gofmt` for Go and `cargo fmt` for Rust.
4. [`Documenter.jl`](https://documenter.juliadocs.org/stable/) and [`Literate.jl`](https://fredrikekre.github.io/Literate.jl/v2/) for easily generating documentation and computational notebooks.

The template also installs many packages that may be helpful for scientists, including `DataFrames.jl`, `CSV.jl`, and `Arrow.jl` for DataFrame management; `Pipe.jl` and `Query.jl` for data pipelines; `Makie.jl` and `AlgebraOfGraphics.jl` for beautiful data visualization; `Aqua.jl` and `JET.jl` for error-testing; `Profile.jl` and `BenchmarkTools.jl` for benchmarking; and `PythonCall.jl` and `RCall.jl` for interfacing with Python and R.

Please note that everything in this repo was autogenerated by the code in `SetupProject.jl`.
