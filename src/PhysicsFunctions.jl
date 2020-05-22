export heaviside, nf, nb

function heaviside(x)
   0.5 * (sign(x) + 1)
end

function nf(x,T=0,d=0)
    if d==0
        return nfBrute(x,T)
    end
    if d==1
        return nf1Brute(x,T)
    end
    throw(ArgumentError)
end

function nfBrute(x,T)
    if T == 0
        if x>0 return 0
        elseif x<0 return 1
        else return 0.5
        end
    end
    return 1/(1+exp(x/T))
end

function nf1Brute(x,T)
    if T == 0
        if x == 0
            return NaN
        else
            return 0
        end
    end
    return -1/( (exp(x/T)+2+exp(-x/T)) * T)
end

function nb(x,T=0)
    if T == 0
        if x>0 return 0
        elseif x<0 return -1
        else return NaN
        end
    end
    return 1/(exp(x/T)-1)
end