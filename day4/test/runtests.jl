using Test
import day4: myiseven, mydot
import QuadGK # ここでimportできる。この例では実際に使用していない

@testset "myiseven" begin
    @test myiseven(1) == false
    @test myiseven(2) == true
    @test myiseven(3) == false
end

@testset "mydot" begin
    @test mydot([2, 4], [1, 2]) == 10
    @test mydot([1, 5], [1, 2]) == 11
    @test mydot([2, 1], [1, 2]) == 4
end

nothing
