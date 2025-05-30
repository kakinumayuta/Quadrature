using Test
import day5: add

@testset "Add" begin
    @test add(1, 2) == 3
    @test add(0.2, 0.5) == 0.7
    @test add(3 / 2, 5 / 2) == 4.0
end
