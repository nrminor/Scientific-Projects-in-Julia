using SciTemplate
using Documenter

DocMeta.setdocmeta!(SciTemplate, :DocTestSetup, :(using SciTemplate); recursive=true)

makedocs(;
    modules=[SciTemplate],
    authors="Nicholas Minor <nrminor@wisc.edu>",
    repo="https://github.com/nrminor/SciTemplate.jl/blob/{commit}{path}#{line}",
    sitename="SciTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://nrminor.github.io/SciTemplate.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nrminor/SciTemplate.jl",
    devbranch="main",
)
