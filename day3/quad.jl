import QuadGK as QGK
import Printf as Pr
import FastGaussQuadrature as FGQ

Qsum, Qdiff = QGK.quadgk(r -> sqrt(1 - r^2), -1.0, 1.0)

println("QuadGK.jl")

#=
Pr.@printf("sum=%.17f\n", Qsum)
Pr.@printf("diff=%.17f\n", Qdiff)
=#

@show Qsum
@show Qdiff

println()
println("FastGaussQuadrature.jl")

# 積分したい関数
f(x) = sqrt(1 - x^2)

# n点Gauss-Legendreで重みと点を取得
n = 10
x, w = FGQ.gausslegendre(n)

# 区間 [-1, 1] での数値積分
Fsum = FGQ.sum(w .* f.(x))
Fdiff = Fsum - π / 2

#=
Pr.@printf("sum=%.17f\n", Fsum)
Pr.@printf("diff=%.17f\n", diff)
=#

@show Fsum
@show Fdiff

println()
println("2重指数型積分")
#2重指数型積分
function de_integrate(f; h=0.1, N=10)
    s = 0.0
    for k in -N:N
        t = k * h
        x = tanh((π / 2) * sinh(t))
        w = (π / 2) * cosh(t) * sech((π / 2) * sinh(t))^2 * h
        s += f(x) * w
    end
    return s
end

# 例：sqrt(1 - x^2) の積分（π/2 になるはず）
f(x) = sqrt(1 - x^2)
dsum = de_integrate(f, N=100)
ddiff = dsum - π / 2

@show dsum
@show ddiff

println()
