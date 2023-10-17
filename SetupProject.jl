#!/usr/bin/env -S julia -t auto

# define the project name and location
const PROJECT_NAME::String = "SciTemplate"
const PARENT_DIR::String = "."
const PROJECT_DIR::String = "$PARENT_DIR/$PROJECT_NAME"

# make sure PkgTemplates.jl is available
using Pkg
try
    import PkgTemplates
catch
    Pkg.add("PkgTemplates")
finally
    using PkgTemplates
end

# define the template as a constant and instantiate it
if !(PROJECT_NAME in readdir(PARENT_DIR))
    const SCI_TEMPLATE::PkgTemplates.Template = Template(;
        user="nrminor",
        dir=PARENT_DIR,
        authors="Nicholas Minor <nrminor@wisc.edu>",
        julia=v"1.9",
        plugins=[
            License(; name="MIT", destination="LICENSE"),
            Git(;
                ignore=[".DS_Store", "._*"],
                name="Nicholas Minor",
                email="nicholasrminor@gmail.com",
                manifest=true,
                ssh=false,
            ),
            GitHubActions(; x86=true),
            Codecov(),
            Documenter{GitHubActions}(),
            Develop(),
        ],
    )
    SCI_TEMPLATE(PROJECT_NAME)
end

# activate our new project environment and add/precompile our core dependencies
Pkg.activate(PROJECT_DIR)
Pkg.add([
    "AlgebraOfGraphics",
    "Aqua",
    "ArgTools",
    "Arrow",
    "BenchmarkTools",
    "CSV",
    "CodeTracking",
    "CodecZlib",
    "CodecZstd",
    "DataFrames",
    "DataToolkit",
    "Dates",
    "Debugger",
    "DocumenterCitations",
    "Downloads",
    "FLoops",
    "GeometryBasics",
    "IJulia",
    "InteractiveErrors",
    "InteractiveUtils",
    "JET",
    "JuliaFormatter",
    "Makie",
    "Missings",
    "Pipe",
    "PkgTemplates",
    "Profile",
    "PythonCall",
    "Query",
    "RCall",
    "Revise",
    "Statistics",
    "Term",
])
Pkg.instantiate()
Pkg.precompile()

# create a standardized data format
if !(".JuliaFormatter.toml" in readdir(PROJECT_DIR))
    open("$PROJECT_DIR/.JuliaFormatter.toml", "w") do write_file
        println(write_file, "style = \"blue\"")
        println(write_file, "indent = 4")
        println(write_file, "margin = 80")
        println(write_file, "always_for_in = true")
        println(write_file, "whitespace_typedefs = true")
        println(write_file, "whitespace_ops_in_indices = true")
        println(write_file, "remove_extra_newlines = false")
    end
end

# demo formatting code
using JuliaFormatter: JuliaFormatter
JuliaFormatter.format(PROJECT_DIR)

# demo setting up DataToolkit.jl
using DataToolkit
data`init`
