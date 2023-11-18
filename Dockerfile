FROM julia:latest

RUN julia -e ' \
    import Pkg; \
    Pkg.add("HTTP"); \
    url = "https://raw.githubusercontent.com/eahenle/JuliaGCP/main/server.jl"; \
    url |> download |> include \
'
