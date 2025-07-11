using Test
using EOM

@testset "EOM" begin
    @test EOM.add(1, 2) == 3
    @test EOM.sub(1, 2) == -1
end
