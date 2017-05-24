# download javascript files for Vega-Lite

using BinDeps
@BinDeps.setup

uschema = "https://vega.github.io/schema/vega-lite/v2.json"

ud3       = "https://d3js.org/d3.v3.min.js"
uvega     = "https://cdnjs.cloudflare.com/ajax/libs/vega/3.0.0-beta.30/vega.min.js"
uvegalite = "https://cdnjs.cloudflare.com/ajax/libs/vega-lite/2.0.0-beta.1/vega-lite.min.js"
uembed    = "https://cdnjs.cloudflare.com/ajax/libs/vega-embed/3.0.0-beta.11/vega-embed.min.js"

destdir      = joinpath(dirname(@__FILE__), "lib")

run(@build_steps begin
  CreateDirectory(destdir, true)
  FileDownloader(uschema,   joinpath(destdir, basename(uschema)))
  FileDownloader(ud3,       joinpath(destdir, basename(ud3)))
  FileDownloader(uvega,     joinpath(destdir, basename(uvega)))
  FileDownloader(uvegalite, joinpath(destdir, basename(uvegalite)))
  FileDownloader(uembed,    joinpath(destdir, basename(uembed)))
end)