module day4
import LinearAlgebra
import Random # 新しく追記

greet() = print("Hello World!")

greet(name::String) = print("Hello $name")

# Compute dot
function mydot(x, y)
    return LinearAlgebra.dot(x, y)
end

import Revise

end # module day4
