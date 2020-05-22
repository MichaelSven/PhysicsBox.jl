using QuadGK

function principalValueIntegral(f)
    g(x) = if x==0 0. else (f(x) - f(-x) + f(1/x) - f(-1/x))/x end
    return quadgk(g,0,1)[1]
end

function cauchyIntegral(f)
    return im*pi*f(0)+principalValueIntegral(f)
end

function infiniteIntegral(f)
    g(x) = f(tan(x))*(sec(x)^2)
    return quadgk(g,-pi/2,pi/2)[1]
end

export principalValueIntegral, cauchyIntegral, infiniteIntegral