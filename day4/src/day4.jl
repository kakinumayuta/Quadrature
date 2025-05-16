module day4
import LinearAlgebra

greet() = print("Hello World!")

greet(name::String) = print("Hello $name")

# Compute dot
function mydot(x, y)
    return LinearAlgebra.dot(x, y)
end

end # module day4
