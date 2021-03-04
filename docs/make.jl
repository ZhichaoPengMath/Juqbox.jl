using Documenter, DocumenterTools, Juqbox

const ROOT = joinpath(@__DIR__, "..")



makedocs(
    modules = [Juqbox],
    format = Documenter.HTML(prettyurls=false),
    #format = Documenter.LaTeX(platform = "docker"), # errors with no such file or directory???
    #clean = false,
    sitename="Juqbox.jl",
    authors = "Anders Petersson, Fortino Garcia, and contributors.",
    pages = [
        "Home" => "index.md"
    ],
    doctest = false, # set to true once initial implementation is done
    source = "src",
)

deploydocs(
    repo = "github.com/LLNL/Juqbox.jl",
#    repo = "software.llnl.gov/Juqbox.jl",
#    root = ".",
#    build = "build"
#    target = "build",
#    deps=nothing,
#    make=nothing,
)
