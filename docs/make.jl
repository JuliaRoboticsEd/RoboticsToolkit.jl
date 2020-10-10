using RoboticsToolkit
using Documenter

makedocs(;
    modules=[RoboticsToolkit],
    authors="Pranshu Malik",
    repo="https://github.com/pranshumalik14/RoboticsToolkit.jl/blob/{commit}{path}#L{line}",
    sitename="RoboticsToolkit.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://pranshumalik14.github.io/RoboticsToolkit.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pranshumalik14/RoboticsToolkit.jl",
)
