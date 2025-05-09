import FastGaussQuadrature as FGQ
import LinearAlgebra as LA

# 積分したい関数
f(x) = sqrt(1 - x^2)

# n点Gauss-Legendreで重みと点を取得
n = 10
x, w = FGQ.gausslegendre(n)

# 区間 [-1, 1] での数値積分
integral = sum(w .* f.(x))

println("∫_{-1}^{1} x^2 dx ≈ ", integral)
