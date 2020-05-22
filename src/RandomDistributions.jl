export randnCPR, randnP, randnC

function randnC(args...;kwargs...)
    return randn(args...;kwargs...) .+ im * randn(args...;kwargs...)
end

function randnCPR(args...;kwargs...)
    return randnP(args...;kwargs...) .+ im * randn(args...;kwargs...)
end

function randnP(args...;kwargs...)
    return abs.(randn(args...;kwargs...))
end