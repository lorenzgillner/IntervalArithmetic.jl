@testset "FI_LIB.addii" begin

    @test isequal_interval(+(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x3.0000000000000P+0, 0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(-0x2.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, -0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(+(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064)), bareinterval(0x3.F400000000000P-1064, 0x3.F400000000000P-1064))

    @test isequal_interval(+(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(+(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064)), bareinterval(-0x3.F400000000000P-1064, -0x3.F400000000000P-1064))

    @test isequal_interval(+(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0xF.FFFFFFFFFFFF8P+1020, 0xF.FFFFFFFFFFFF8P+1020), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0xF.FFFFFFFFFFFF0P+1020, 0xF.FFFFFFFFFFFF8P+1020))

    @test isequal_interval(+(bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF0P+1020))

    @test isequal_interval(+(bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0), bareinterval(0x3.0000000000000P+0, 0x4.0000000000000P+0)), bareinterval(0x4.0000000000000P+0, 0x6.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x3.0000000000000P+0, 0x4.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x4.0000000000000P+0, 0x6.0000000000000P+0))

    @test isequal_interval(+(bareinterval(-0x1.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x4.0000000000000P+0, -0x3.0000000000000P+0)), bareinterval(-0x5.0000000000000P+0, -0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(-0x4.0000000000000P+0, -0x3.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x5.0000000000000P+0, -0x3.0000000000000P+0))

    @test isequal_interval(+(bareinterval(-0x5.0000000000000P+0, -0x4.0000000000000P+0), bareinterval(0x4.0000000000000P+0, 0x5.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0))

    @test isequal_interval(+(bareinterval(0x4.0000000000000P+0, 0x5.0000000000000P+0), bareinterval(-0x5.0000000000000P+0, -0x4.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0))

end

@testset "FI_LIB.subii" begin

    @test isequal_interval(-(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(-0x2.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x2.0000000000000P+0, 0x2.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x2.0000000000000P+0, -0x2.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0xF.FFFFFFFFFFFF8P-4))

    @test isequal_interval(-(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x1.0000000000001P+0, -0x1.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0xF.FFFFFFFFFFFF8P+1020, 0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0xF.FFFFFFFFFFFF0P+1020, 0xF.FFFFFFFFFFFF8P+1020))

    @test isequal_interval(-(bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF8P+1020), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF0P+1020))

    @test isequal_interval(-(bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(-0x2.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x2.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0), bareinterval(0x3.0000000000000P+0, 0x4.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x3.0000000000000P+0, 0x4.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x3.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x1.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x4.0000000000000P+0, -0x3.0000000000000P+0)), bareinterval(0x2.0000000000000P+0, 0x4.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x4.0000000000000P+0, -0x3.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x4.0000000000000P+0, -0x2.0000000000000P+0))

    @test isequal_interval(-(bareinterval(-0x5.0000000000000P+0, -0x4.0000000000000P+0), bareinterval(0x4.0000000000000P+0, 0x5.0000000000000P+0)), bareinterval(-0xA.0000000000000P+0, -0x8.0000000000000P+0))

    @test isequal_interval(-(bareinterval(0x4.0000000000000P+0, 0x5.0000000000000P+0), bareinterval(-0x5.0000000000000P+0, -0x4.0000000000000P+0)), bareinterval(0x8.0000000000000P+0, 0xA.0000000000000P+0))

end

@testset "FI_LIB.mulii" begin

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0xF.FFFFFFFFFFFF8P+1020, 0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x8.0000000000000P-4, 0x8.0000000000000P-4)), bareinterval(0x7.FFFFFFFFFFFFCP+1020, 0x7.FFFFFFFFFFFFCP+1020))

    @test isequal_interval(*(bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x8.0000000000000P-4, 0x8.0000000000000P-4)), bareinterval(-0x7.FFFFFFFFFFFFCP+1020, -0x7.FFFFFFFFFFFFCP+1020))

    @test isequal_interval(*(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064)), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(*(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064))

    @test isequal_interval(*(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(0x4.0000000000000P+0, 0x9.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, -0x4.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, -0x4.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(0x4.0000000000000P+0, 0x9.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x5.0000000000000P+0, +0x2.0000000000000P+0), bareinterval(-0x4.0000000000000P+0, +0x3.0000000000000P+0)), bareinterval(-0xF.0000000000000P+0, +0x1.4000000000000P+4))

    @test isequal_interval(*(bareinterval(-0x5.0000000000000P+0, +0x2.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, +0x8.0000000000000P+0)), bareinterval(-0x2.8000000000000P+4, +0x1.0000000000000P+4))

    @test isequal_interval(*(bareinterval(-0x2.0000000000000P+0, +0x5.0000000000000P+0), bareinterval(-0x4.0000000000000P+0, +0x3.0000000000000P+0)), bareinterval(-0x1.4000000000000P+4, +0xF.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x4.0000000000000P+0, +0x5.0000000000000P+0), bareinterval(-0x4.0000000000000P+0, +0x3.0000000000000P+0)), bareinterval(-0x1.4000000000000P+4, +0x1.0000000000000P+4))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x9.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x9.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0)), bareinterval(-0x3.0000000000000P+0, +0x3.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x9.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x9.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x0.0000000000000P+0, 0x2.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(-0x6.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064)), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(*(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064))

    @test isequal_interval(*(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064))

    @test isequal_interval(*(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064)), bareinterval(-0x4.0000000000000P-1076, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(*(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

end

@testset "FI_LIB.divii" begin

    @test isequal_interval(/(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(/(bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0xF.FFFFFFFFFFFF8P+1020, 0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x2.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x7.FFFFFFFFFFFFCP+1020, 0x7.FFFFFFFFFFFFCP+1020))

    @test isequal_interval(/(bareinterval(-0xF.FFFFFFFFFFFF8P+1020, -0xF.FFFFFFFFFFFF8P+1020), bareinterval(0x2.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(-0x7.FFFFFFFFFFFFCP+1020, -0x7.FFFFFFFFFFFFCP+1020))

    @test isequal_interval(/(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(0x1.0000000000000P+0, 0x1.0000000000000P+0)), bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064))

    @test isequal_interval(/(bareinterval(0x1.FA00000000000P-1064, 0x1.FA00000000000P-1064), bareinterval(-0x1.0000000000000P+0, -0x1.0000000000000P+0)), bareinterval(-0x1.FA00000000000P-1064, -0x1.FA00000000000P-1064))

    @test isequal_interval(/(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(0xA.AAAAAAAAAAAA8P-4, 0x1.8000000000000P+0))

    @test isequal_interval(/(bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x1.8000000000000P+0, -0xA.AAAAAAAAAAAA8P-4))

    @test isequal_interval(/(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x8.0000000000000P-4, +0x8.0000000000000P-4))

    @test isequal_interval(/(bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x8.0000000000000P-4, +0x8.0000000000000P-4))

    @test isequal_interval(/(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x1.8000000000000P+0, -0xA.AAAAAAAAAAAA8P-4))

    @test isequal_interval(/(bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(0xA.AAAAAAAAAAAA8P-4, 0x1.8000000000000P+0))

    @test isequal_interval(/(bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x1.8000000000000P+0))

    @test isequal_interval(/(bareinterval(-0x3.0000000000000P+0, 0x0.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(-0x1.8000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(-0x3.0000000000000P+0, -0x2.0000000000000P+0)), bareinterval(-0x1.8000000000000P+0, 0x0.0000000000000P+0))

    @test isequal_interval(/(bareinterval(0x0.0000000000000P+0, 0x3.0000000000000P+0), bareinterval(0x2.0000000000000P+0, 0x3.0000000000000P+0)), bareinterval(0x0.0000000000000P+0, 0x1.8000000000000P+0))

end

@testset "FI_LIB.unary_functions" begin

    @test isequal_interval(exp(bareinterval(-0x1.16CC0DF1540F5P+112, -0x1.B3E4076622F04P-232)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x2.42042B9A88438P-220, -0x2.A213429DB0508P-508)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x2.0E2E40B15D814P+272, -0x1.5D74CFDA6B292P-200)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x2.0EA791886F712P-416, -0x3.FE66A8D1A3472P-456)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x8.80EEFDF700148P+332, -0x1.C4E85E50A626DP+0)), bareinterval(0x0.0000000000000P+0, 0x2.BA43457B11D98P-4))

    @test isequal_interval(exp(bareinterval(-0x6.CA83546563A5CP+236, -0x4.F0F28370909FCP-440)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x4.E60572D4FCFD0P+172, -0x1.EB095183538C8P-344)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x2.7ED8954764B12P-288, -0x8.71DC22117BE90P-756)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0xD.CF39B8DD68B98P-76, -0x8.0205C5B1357B0P-564)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x4.AF296DD37FD74P+256, -0x5.CBE2BD423B02CP-48)), bareinterval(0x0.0000000000000P+0, 0xF.FFFFFFFFFFA38P-4))

    @test isequal_interval(exp(bareinterval(-0x1.1FBA2D1252D2BP+656, -0x2.4B7A4095C91B4P+8)), bareinterval(0x0.0000000000000P+0, 0x1.5D7A2F6655DFCP-848))

    @test isequal_interval(exp(bareinterval(-0x1.44F2134E1901EP+8, -0x2.581DAD9AFE6DCP-172)), bareinterval(0x9.34C0766401B20P-472, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x2.9529E333F2ABAP+988, -0x7.19390F862F49CP-544)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x1.58391FD92C387P-148, -0x4.0C12426A57194P-440)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0xB.FADC4FB83E140P+348, -0xF.13E388B2165F0P-512)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x8.86826CE1AB700P-240, -0x4.FEA8D3A3ED018P-316)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x2.B7E151628AED2P+0, 0x7.63992E35376B8P+0))

    @test isequal_interval(exp(bareinterval(-0x1.0000000000000P+0, +0x2.0000000000000P+0)), bareinterval(0x5.E2D58D8B3BCDCP-4, 0x7.63992E35376B8P+0))

    @test isequal_interval(exp(bareinterval(-0x5.0000000000000P+0, -0x3.0000000000000P+0)), bareinterval(0x1.B993FE00D5376P-8, 0xC.BED8666758578P-8))

    @test isequal_interval(exp(bareinterval(-0x2.0000000000000P+0, +0x9.9999999999998P-4)), bareinterval(0x2.2A555477F0396P-4, 0x1.D27660B11A9F0P+0))

    @test isequal_interval(exp(bareinterval(0x4.0000000000000P-1076, 0x4.4444400000000P-1056)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(exp(bareinterval(0x4.4440000000000P-1064, 0x1.0000000000000P+0)), bareinterval(0x1.0000000000000P+0, 0x2.B7E151628AED4P+0))

    @test isequal_interval(exp(bareinterval(-0x4.4444000000000P-1060, +0x4.4444000000000P-1060)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000001P+0))

    @test isequal_interval(exp(bareinterval(-0x4.4400000000000P-1068, +0x1.FFF0000000000P+0)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x7.6322F8540CFB4P+0))

    @test isequal_interval(exp(bareinterval(-0x1.FFFF000000000P+0, -0x8.8888880000000P-1052)), bareinterval(0x2.2A577ECE59DC6P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp(bareinterval(-0x1.FFFFFFF000000P+0, +0x8.CD11555400000P-1044)), bareinterval(0x2.2A55549A958EAP-4, 0x1.0000000000001P+0))

    @test isequal_interval(exp2(bareinterval(-0x1.16CC0DF1540F5P+112, -0x1.B3E4076622F04P-232)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x2.42042B9A88438P-220, -0x2.A213429DB0508P-508)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x2.0E2E40B15D814P+272, -0x1.5D74CFDA6B292P-200)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x2.0EA791886F712P-416, -0x3.FE66A8D1A3472P-456)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x8.80EEFDF700148P+332, -0x1.C4E85E50A626DP+0)), bareinterval(0x0.0000000000000P+0, 0x4.B1AC6F8470484P-4))

    @test isequal_interval(exp2(bareinterval(-0x6.CA83546563A5CP+236, -0x4.F0F28370909FCP-440)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x4.E60572D4FCFD0P+172, -0x1.EB095183538C8P-344)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x2.7ED8954764B12P-288, -0x8.71DC22117BE90P-756)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0xD.CF39B8DD68B98P-76, -0x8.0205C5B1357B0P-564)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x4.AF296DD37FD74P+256, -0x5.CBE2BD423B02CP-48)), bareinterval(0x0.0000000000000P+0, 0xF.FFFFFFFFFFC00P-4))

    @test isequal_interval(exp2(bareinterval(-0x1.1FBA2D1252D2BP+656, -0x2.4B7A4095C91B4P+8)), bareinterval(0x0.0000000000000P+0, 0x1.6FB78C613E5ECP-588))

    @test isequal_interval(exp2(bareinterval(-0x1.44F2134E1901EP+8, -0x2.581DAD9AFE6DCP-172)), bareinterval(0x8.4EB038B9B8508P-328, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x2.9529E333F2ABAP+988, -0x7.19390F862F49CP-544)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x1.58391FD92C387P-148, -0x4.0C12426A57194P-440)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0xB.FADC4FB83E140P+348, -0xF.13E388B2165F0P-512)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x8.86826CE1AB700P-240, -0x4.FEA8D3A3ED018P-316)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x2.0000000000000P+0, 0x4.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x1.0000000000000P+0, +0x2.0000000000000P+0)), bareinterval(0x8.0000000000000P-4, 0x4.0000000000000P+0))

    @test isequal_interval(exp2(bareinterval(-0x5.0000000000000P+0, -0x3.0000000000000P+0)), bareinterval(0x8.0000000000000P-8, 0x2.0000000000000P-4))

    @test isequal_interval(exp2(bareinterval(-0x2.0000000000000P+0, +0x9.9999999999998P-4)), bareinterval(0x4.0000000000000P-4, 0x1.8406003B2AE5DP+0))

    @test isequal_interval(exp2(bareinterval(0x4.4400000000000P-1068, 0x4.48CD100000000P-1052)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(exp2(bareinterval(-0x4.8D15088880000P-1040, +0x4.8D11554000000P-1048)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000001P+0))

    @test isequal_interval(exp2(bareinterval(0xD.0888D11000000P-1044, 0x1.000003443AAAAP+0)), bareinterval(0x1.0000000000000P+0, 0x2.0000048742860P+0))

    @test isequal_interval(exp2(bareinterval(-0xD.15550CC880000P-1040, +0x4.8D150CC000000P-1048)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000001P+0))

    @test isequal_interval(exp2(bareinterval(-0x4.8D159E0000000P-1048, +0x1.FFFFFF0999999P+0)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x3.FFFFFD54D58B0P+0))

    @test isequal_interval(exp2(bareinterval(-0x1.FFFFFFFFFFFFFP+0, +0x1.14C8911540000P-1040)), bareinterval(0x4.0000000000000P-4, 0x1.0000000000001P+0))

    @test isequal_interval(exp10(bareinterval(-0x2.8457BC029986EP+112, -0x1.7A77BFCCF5A9EP-232)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x6.05C0BB1BCB730P-220, -0x3.C5EC30FBB68C8P-508)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x2.9B09919BF9D9EP+272, -0xE.20FF41BD18058P-204)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.1503444763FC5P-416, -0x2.075DF98B2478CP-456)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x4.ECBC855871080P+332, -0x1.3A01905E36F84P+0)), bareinterval(0x0.0000000000000P+0, 0xF.317F8555628F0P-8))

    @test isequal_interval(exp10(bareinterval(-0x7.32EDAB7F60A50P+236, -0x2.404E44C49C644P-440)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x6.5263CF84EF388P+172, -0x1.63A15E999EB64P-344)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.4171976A1CA54P-288, -0x6.941F470A70074P-756)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x4.69BB1D34B9570P-76, -0x7.78A1F475A306CP-564)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x2.E046DB554037CP+256, -0x2.6ABC15579B2B2P-48)), bareinterval(0x0.0000000000000P+0, 0xF.FFFFFFFFFFA70P-4))

    @test isequal_interval(exp10(bareinterval(-0xE.33C49CF5B8790P+652, -0x8.297A99ED9ED08P+8)), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(exp10(bareinterval(-0x1.7AAA15EBBD3F2P+8, -0x6.3E590E626451CP-172)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x2.8F9204BC4041EP+988, -0x6.ACFA418D8F92CP-544)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x2.B00450A48D586P-148, -0x2.BB570B356C6CAP-440)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.9E7DDBBE00F75P+352, -0xC.41329461A0C30P-512)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.5BD629B25AA23P-236, -0x7.DEA605DEC97CCP-316)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x3.AE1DC13A652CAP+168, -0x6.65D7E0A247778P-56)), bareinterval(0x0.0000000000000P+0, 0xF.FFFFFFFFFFFF8P-4))

    @test isequal_interval(exp10(bareinterval(-0xA.27B4555158148P-68, -0x5.2B55801231EC8P-344)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.D68A6BA7E617FP+12, -0x6.36B661DCE2688P-236)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.98EF0C6A8BD66P+132, -0x1.EB0E1AB78F314P-480)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x1.C08152CC09416P+220, -0x7.4CF193131FA64P-192)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x6.F70E0DA4D2BA0P-140, -0x1.7036C237D5B00P-672)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0xF.CC937FA330E40P+648, -0x3.A0EE84451C92CP-324)), bareinterval(0x0.0000000000000P+0, 0x1.0000000000000P+0))

    @test isequal_interval(exp10(bareinterval(-0x5.F775993940188P-120, -0x1.8BCA641025A83P-124)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(log(bareinterval(0xC.4B4A6EB6B3AF0P-264, 0xA.DD2C4C1BE4B30P+92)), bareinterval(-0xB.47B530A1054D8P+4, +0x4.227AD8183FB70P+4))

    @test isequal_interval(log(bareinterval(0x2.6213E21B14894P-516, 0x6.6606F0995E5F4P-224)), bareinterval(-0x1.64CBA844FC0EAP+8, -0x9.968AD8B569FE0P+4))

    @test isequal_interval(log(bareinterval(0x9.0FF2CAA1B3048P-240, 0x1.95F14B9BA7449P+236)), bareinterval(-0xA.426B5145A44A0P+4, +0xA.40B346F454218P+4))

    @test isequal_interval(log(bareinterval(0x8.E2ADA8DFBE938P-492, 0x3.67CB3BE0BB146P-452)), bareinterval(-0x1.52D81024E4C23P+8, -0x1.3813C01ACD25CP+8))

    @test isequal_interval(log(bareinterval(0x1.394270BBCBA7EP+196, 0x8.4976F0BF45A40P+224)), bareinterval(0x8.80F0717A1DC40P+4, 0x9.D6130F01F8B78P+4))

    @test isequal_interval(log(bareinterval(0x6.A000A12839A50P-44, 0x3.86DC59439415AP+276)), bareinterval(-0x1.C9B8D4127E3DAP+4, +0xC.091AAD1207058P+4))

    @test isequal_interval(log(bareinterval(0x1.3C84E4F9C80CEP-476, 0x9.1E9439C3B4358P+196)), bareinterval(-0x1.49B9D16B7E46AP+8, +0x8.A1137BDE55CF8P+4))

    @test isequal_interval(log(bareinterval(0x8.41D2DB6D93548P-376, 0x2.EDCF4A7919034P+140)), bareinterval(-0x1.028323B4D95B4P+8, +0x6.21D80D9193AB8P+4))

    @test isequal_interval(log(bareinterval(0x1.2C18FEEBCAEAEP-768, 0x1.C369E759DF5E3P-328)), bareinterval(-0x2.142D983D15A28P+8, -0xE.2C8FA3F896A50P+4))

    @test isequal_interval(log(bareinterval(0x4.D94E91619D3F0P-580, 0x2.9F6CAF6B5513EP-132)), bareinterval(-0x1.907255D3994FEP+8, -0x5.A87FCF5FBD800P+4))

    @test isequal_interval(log(bareinterval(0x2.9CD12C1D0AAC4P+116, 0x3.BF7E0E52DC1AAP+276)), bareinterval(0x5.15D8B410E0A5CP+4, 0xC.0A13DC536CD58P+4))

    @test isequal_interval(log(bareinterval(0x3.36DE5C55594EEP-100, 0x1.D0460177B1553P+204)), bareinterval(-0x4.425A8474E3980P+4, +0x8.DFF506FE0D9F8P+4))

    @test isequal_interval(log(bareinterval(0x4.BD4031736F7A8P+4, 0xF.A10BB3C91C7B0P+592)), bareinterval(0x4.54169A4297548P+0, 0x1.9D179EA5204D0P+8))

    @test isequal_interval(log(bareinterval(0x2.8E258DB3C44F8P+20, 0x3.1A4EDE719A4C0P+628)), bareinterval(0xE.CD14BEBE2CD68P+0, 0x1.B46DC0D02B874P+8))

    @test isequal_interval(log(bareinterval(0x2.33950F38F830EP-176, 0x5.BE0388619B018P-24)), bareinterval(-0x7.9346BAB839B58P+4, -0xE.E33F2C933B990P+0))

    @test isequal_interval(log(bareinterval(0x3.24F03DF33568CP-560, 0xE.67255823421E8P+920)), bareinterval(-0x1.83044F26AAA2BP+8, +0x2.805CE2DC91036P+8))

    @test isequal_interval(log(bareinterval(0x2.D572639DC5FA8P-468, 0x1.95CF42AA171CDP-160)), bareinterval(-0x1.4359ECD75CB6CP+8, -0x6.E715E1BA0E35CP+4))

    @test isequal_interval(log(bareinterval(0x4.705A028302DB0P-532, 0x2.E57341C14970CP+324)), bareinterval(-0x1.6F438EE9F6020P+8, +0xE.1A4A3523F2658P+4))

    @test isequal_interval(log(bareinterval(0x4.DBA1D21D6F308P+144, 0x3.667988C57865AP+196)), bareinterval(0x6.564D09AD1D214P+4, 0x8.914A9531FD118P+4))

    @test isequal_interval(log(bareinterval(0x4.9FA5A1E4DF740P-328, 0x1.11B85141B78F6P-240)), bareinterval(-0xE.1D2336A5BE1A8P+4, -0xA.649D44362A2F0P+4))

    @test isequal_interval(log(bareinterval(0xA.0CDE9DC015B08P+360, 0xF.99D84F862AC58P+524)), bareinterval(0xF.BD7308ED73FF0P+4, 0x1.6DF4DA39DC5DDP+8))

    @test isequal_interval(log(bareinterval(0x6.88441038D56B8P-108, 0x3.3D65C09938132P+136)), bareinterval(-0x4.8FBAEF1169C24P+4, +0x5.F718BBF0CE2F8P+4))

    @test isequal_interval(log(bareinterval(0x7.1761CAB055134P-356, 0x1.92EFD09488689P-76)), bareinterval(-0xF.4CD3094A3B4B8P+4, -0x3.439BFD719BAE8P+4))

    @test isequal_interval(log(bareinterval(0x6.2085E427413C8P-252, 0xB.8CDD3B024EA10P-36)), bareinterval(-0xA.CDC41AEE74318P+4, -0x1.681AFF89E9C89P+4))

    @test isequal_interval(log(bareinterval(0xB.F5F1C0FA33978P-504, 0x4.924DD8D50B1CCP+72)), bareinterval(-0x1.5ADD53379EF4DP+8, +0x3.36D2B121508A8P+4))

    @test isequal_interval(log(bareinterval(0xB.BC7E37EB2D388P-216, 0x1.CFE27BB53DEBBP+192)), bareinterval(-0x9.341D196AD2D58P+4, +0x8.5ADC069F618A8P+4))

    @test isequal_interval(log(bareinterval(0x1.E139DD116F868P-688, 0xD.2545346D68FD0P-148)), bareinterval(-0x1.DC410CBC8E1C8P+8, -0x6.4027B79D2EAA8P+4))

    @test isequal_interval(log(bareinterval(0x2.E0C8E64A890ACP+192, 0x2.6A898D2CAA9A4P+260)), bareinterval(0x8.6243148F46208P+4, 0xB.519B6E544F898P+4))

    @test isequal_interval(log(bareinterval(0x5.9C4642ED78BC8P-340, 0x4.631BD2232F0C0P+588)), bareinterval(-0xE.9F20674285418P+4, +0x1.990C99B6124FEP+8))

    @test isequal_interval(log(bareinterval(0xF.C05EA810DFE88P-180, 0xA.05884FBED5F48P-152)), bareinterval(-0x7.A02728D7D3790P+4, -0x6.70DBA893A16E0P+4))

    @test isequal_interval(log2(bareinterval(0xC.4B4A6EB6B3AF0P-264, 0xA.DD2C4C1BE4B30P+92)), bareinterval(-0x1.04614E93EA794P+8, +0x5.F7104B04804E4P+4))

    @test isequal_interval(log2(bareinterval(0x2.6213E21B14894P-516, 0x6.6606F0995E5F4P-224)), bareinterval(-0x2.02BF4547CF74AP+8, -0xD.D527F669B7AA0P+4))

    @test isequal_interval(log2(bareinterval(0x9.0FF2CAA1B3048P-240, 0x1.95F14B9BA7449P+236)), bareinterval(-0xE.CD1F394A2C268P+4, +0xE.CAA4613C31FD0P+4))

    @test isequal_interval(log2(bareinterval(0x8.E2ADA8DFBE938P-492, 0x3.67CB3BE0BB146P-452)), bareinterval(-0x1.E8D93AC78E47CP+8, -0x1.C23B6E9F9BE73P+8))

    @test isequal_interval(log2(bareinterval(0x1.394270BBCBA7EP+196, 0x8.4976F0BF45A40P+224)), bareinterval(0xC.44A8D0A480900P+4, 0xE.30D042BD32E08P+4))

    @test isequal_interval(log2(bareinterval(0x6.A000A12839A50P-44, 0x3.86DC59439415AP+276)), bareinterval(-0x2.945A6DE3564F2P+4, +0x1.15D18004DA527P+8))

    @test isequal_interval(log2(bareinterval(0x1.3C84E4F9C80CEP-476, 0x9.1E9439C3B4358P+196)), bareinterval(-0x1.DBB1A03AD9911P+8, +0xC.7305ECF8E75D8P+4))

    @test isequal_interval(log2(bareinterval(0x8.41D2DB6D93548P-376, 0x2.EDCF4A7919034P+140)), bareinterval(-0x1.74F450FB5F194P+8, +0x8.D8CE5C08208D0P+4))

    @test isequal_interval(log2(bareinterval(0x1.2C18FEEBCAEAEP-768, 0x1.C369E759DF5E3P-328)), bareinterval(-0x2.FFC54D5EF9E5AP+8, -0x1.472E83799CCFAP+8))

    @test isequal_interval(log2(bareinterval(0x4.D94E91619D3F0P-580, 0x2.9F6CAF6B5513EP-132)), bareinterval(-0x2.41B8EC5041B68P+8, -0x8.29BE215800410P+4))

    @test isequal_interval(log2(bareinterval(0x2.9CD12C1D0AAC4P+116, 0x3.BF7E0E52DC1AAP+276)), bareinterval(0x7.562AE05DF4698P+4, 0x1.15E7F7FA196AAP+8))

    @test isequal_interval(log2(bareinterval(0x3.36DE5C55594EEP-100, 0x1.D0460177B1553P+204)), bareinterval(-0x6.250C3695FCF20P+4, +0xC.CDBDC5938D560P+4))

    @test isequal_interval(log2(bareinterval(0x4.BD4031736F7A8P+4, 0xF.A10BB3C91C7B0P+592)), bareinterval(0x6.3EA22BED11920P+0, 0x2.53F7565A6FA4CP+8))

    @test isequal_interval(log2(bareinterval(0x2.8E258DB3C44F8P+20, 0x3.1A4EDE719A4C0P+628)), bareinterval(0x1.55A7D090E9BC4P+4, 0x2.75A230A6EF148P+8))

    @test isequal_interval(log2(bareinterval(0x2.33950F38F830EP-176, 0x5.BE0388619B018P-24)), bareinterval(-0xA.EDC8C6AE09A00P+4, -0x1.57A778189781EP+4))

    @test isequal_interval(log2(bareinterval(0x3.24F03DF33568CP-560, 0xE.67255823421E8P+920)), bareinterval(-0x2.2E58E661BEF52P+8, +0x3.9BD9297418726P+8))

    @test isequal_interval(log2(bareinterval(0x2.D572639DC5FA8P-468, 0x1.95CF42AA171CDP-160)), bareinterval(-0x1.D27F4D5811EC0P+8, -0x9.F55D8E4A51F88P+4))

    @test isequal_interval(log2(bareinterval(0x4.705A028302DB0P-532, 0x2.E57341C14970CP+324)), bareinterval(-0x2.11D98CE9F01E8P+8, +0x1.4588C1B9F05FCP+8))

    @test isequal_interval(log2(bareinterval(0x4.DBA1D21D6F308P+144, 0x3.667988C57865AP+196)), bareinterval(0x9.247C4A0D6A240P+4, 0xC.5C40234316DE0P+4))

    @test isequal_interval(log2(bareinterval(0x4.9FA5A1E4DF740P-328, 0x1.11B85141B78F6P-240)), bareinterval(-0x1.45CA7D7508D73P+8, -0xE.FE7480A8A6A70P+4))

    @test isequal_interval(log2(bareinterval(0xA.0CDE9DC015B08P+360, 0xF.99D84F862AC58P+524)), bareinterval(0x1.6B54440063A2FP+8, 0x2.0FF6AC0A1DF08P+8))

    @test isequal_interval(log2(bareinterval(0x6.88441038D56B8P-108, 0x3.3D65C09938132P+136)), bareinterval(-0x6.94ADB7A807630P+4, +0x8.9B227CD69B7B0P+4))

    @test isequal_interval(log2(bareinterval(0x7.1761CAB055134P-356, 0x1.92EFD09488689P-76)), bareinterval(-0x1.612C877FDEFC9P+8, -0x4.B58789B7D2AB8P+4))

    @test isequal_interval(log2(bareinterval(0x6.2085E427413C8P-252, 0xB.8CDD3B024EA10P-36)), bareinterval(-0xF.96282D809EDE0P+4, -0x2.0785B9A270C10P+4))

    @test isequal_interval(log2(bareinterval(0xB.F5F1C0FA33978P-504, 0x4.924DD8D50B1CCP+72)), bareinterval(-0x1.F46B75E4932F4P+8, +0x4.A3152AC221298P+4))

    @test isequal_interval(log2(bareinterval(0xB.BC7E37EB2D388P-216, 0x1.CFE27BB53DEBBP+192)), bareinterval(-0xD.47274C2E0B298P+4, +0xC.0DB8D252704A8P+4))

    @test isequal_interval(log2(bareinterval(0x1.E139DD116F868P-688, 0xD.2545346D68FD0P-148)), bareinterval(-0x2.AF16E4D3D6128P+8, -0x9.048930492A7A0P+4))

    @test isequal_interval(log2(bareinterval(0x2.E0C8E64A890ACP+192, 0x2.6A898D2CAA9A4P+260)), bareinterval(0xC.1866CEA5B0408P+4, 0x1.0545D0C4DA7BAP+8))

    @test isequal_interval(log2(bareinterval(0x5.9C4642ED78BC8P-340, 0x4.631BD2232F0C0P+588)), bareinterval(-0x1.51830AD8B30FCP+8, +0x2.4E221EC1DB53EP+8))

    @test isequal_interval(log2(bareinterval(0xF.C05EA810DFE88P-180, 0xA.05884FBED5F48P-152)), bareinterval(-0xB.005C8501548A8P+4, -0x9.4ACCA02A24828P+4))

    @test isequal_interval(log10(bareinterval(0xC.4B4A6EB6B3AF0P-264, 0xA.DD2C4C1BE4B30P+92)), bareinterval(-0x4.E61D94C4C8D58P+4, +0x1.CBB1247192AE0P+4))

    @test isequal_interval(log10(bareinterval(0x2.6213E21B14894P-516, 0x6.6606F0995E5F4P-224)), bareinterval(-0x9.AF44F24283358P+4, -0x4.29FE8451F9E24P+4))

    @test isequal_interval(log10(bareinterval(0x9.0FF2CAA1B3048P-240, 0x1.95F14B9BA7449P+236)), bareinterval(-0x4.74A3ADB971C48P+4, +0x4.73E4925024C64P+4))

    @test isequal_interval(log10(bareinterval(0x8.E2ADA8DFBE938P-492, 0x3.67CB3BE0BB146P-452)), bareinterval(-0x9.32877CA0160B8P+4, -0x8.7888BDDBCE5D0P+4))

    @test isequal_interval(log10(bareinterval(0x1.394270BBCBA7EP+196, 0x8.4976F0BF45A40P+224)), bareinterval(0x3.B16EC52507DF2P+4, 0x4.4595F97548968P+4))

    @test isequal_interval(log10(bareinterval(0x6.A000A12839A50P-44, 0x3.86DC59439415AP+276)), bareinterval(-0xC.6C93FFEF64F78P+0, +0x5.3A1B471A21FF4P+4))

    @test isequal_interval(log10(bareinterval(0x1.3C84E4F9C80CEP-476, 0x9.1E9439C3B4358P+196)), bareinterval(-0x8.F32B7DBB21008P+4, +0x3.BF63BA7A3C658P+4))

    @test isequal_interval(log10(bareinterval(0x8.41D2DB6D93548P-376, 0x2.EDCF4A7919034P+140)), bareinterval(-0x7.0453C2F061648P+4, +0x2.A9C64A16830FCP+4))

    @test isequal_interval(log10(bareinterval(0x1.2C18FEEBCAEAEP-768, 0x1.C369E759DF5E3P-328)), bareinterval(-0xE.71F3C5029D848P+4, -0x6.27DD331C437F0P+4))

    @test isequal_interval(log10(bareinterval(0x4.D94E91619D3F0P-580, 0x2.9F6CAF6B5513EP-132)), bareinterval(-0xA.DE968FD95ABE0P+4, -0x2.7513429684674P+4))

    @test isequal_interval(log10(bareinterval(0x2.9CD12C1D0AAC4P+116, 0x3.BF7E0E52DC1AAP+276)), bareinterval(0x2.35627EFD00A60P+4, 0x5.3A877F4AD58E8P+4))

    @test isequal_interval(log10(bareinterval(0x3.36DE5C55594EEP-100, 0x1.D0460177B1553P+204)), bareinterval(-0x1.D988D7EBC5AE3P+4, +0x3.DAB2CD7F2625EP+4))

    @test isequal_interval(log10(bareinterval(0x4.BD4031736F7A8P+4, 0xF.A10BB3C91C7B0P+592)), bareinterval(0x1.E13C93CF0C5D8P+0, 0xB.367584AC914D0P+4))

    @test isequal_interval(log10(bareinterval(0x2.8E258DB3C44F8P+20, 0x3.1A4EDE719A4C0P+628)), bareinterval(0x6.6D93B54D66420P+0, 0xB.D89E0CA927598P+4))

    @test isequal_interval(log10(bareinterval(0x2.33950F38F830EP-176, 0x5.BE0388619B018P-24)), bareinterval(-0x3.4A378CAAD54DAP+4, -0x6.773414D886C14P+0))

    @test isequal_interval(log10(bareinterval(0x3.24F03DF33568CP-560, 0xE.67255823421E8P+920)), bareinterval(-0xA.8144B5B8F5DD8P+4, +0x1.161B25DAC86ECP+8))

    @test isequal_interval(log10(bareinterval(0x2.D572639DC5FA8P-468, 0x1.95CF42AA171CDP-160)), bareinterval(-0x8.C6DFF01C76970P+4, -0x2.FF6F7B088B0CCP+4))

    @test isequal_interval(log10(bareinterval(0x4.705A028302DB0P-532, 0x2.E57341C14970CP+324)), bareinterval(-0x9.F802CE339E840P+4, +0x6.1FEDD0FB88D78P+4))

    @test isequal_interval(log10(bareinterval(0x4.DBA1D21D6F308P+144, 0x3.667988C57865AP+196)), bareinterval(0x2.C08E6C63F32E4P+4, 0x3.B888C99289754P+4))

    @test isequal_interval(log10(bareinterval(0x4.9FA5A1E4DF740P-328, 0x1.11B85141B78F6P-240)), bareinterval(-0x6.212A6B69124F0P+4, -0x4.837D7868C93BCP+4))

    @test isequal_interval(log10(bareinterval(0xA.0CDE9DC015B08P+360, 0xF.99D84F862AC58P+524)), bareinterval(0x6.D5F7B5F14DD48P+4, 0x9.EEED0801EA480P+4))

    @test isequal_interval(log10(bareinterval(0x6.88441038D56B8P-108, 0x3.3D65C09938132P+136)), bareinterval(-0x1.FB238786D64F9P+4, +0x2.9735AA99F42AAP+4))

    @test isequal_interval(log10(bareinterval(0x7.1761CAB055134P-356, 0x1.92EFD09488689P-76)), bareinterval(-0x6.A50E2200DFF14P+4, -0x1.6AE688B7C8203P+4))

    @test isequal_interval(log10(bareinterval(0x6.2085E427413C8P-252, 0xB.8CDD3B024EA10P-36)), bareinterval(-0x4.B1282C68FE4F8P+4, -0x9.C644DFB9EE3E0P+0))

    @test isequal_interval(log10(bareinterval(0xB.F5F1C0FA33978P-504, 0x4.924DD8D50B1CCP+72)), bareinterval(-0x9.6A430336AD680P+4, +0x1.6558F570C1420P+4))

    @test isequal_interval(log10(bareinterval(0xB.BC7E37EB2D388P-216, 0x1.CFE27BB53DEBBP+192)), bareinterval(-0x3.FF3F46384E0E2P+4, +0x3.A0E51611FF75EP+4))

    @test isequal_interval(log10(bareinterval(0x1.E139DD116F868P-688, 0xD.2545346D68FD0P-148)), bareinterval(-0xC.ED5A39E5D4878P+4, -0x2.B6F044CDE4A0CP+4))

    @test isequal_interval(log10(bareinterval(0x2.E0C8E64A890ACP+192, 0x2.6A898D2CAA9A4P+260)), bareinterval(0x3.A41C190FE9E7AP+4, 0x4.EA6A3021E4FB8P+4))

    @test isequal_interval(log10(bareinterval(0x5.9C4642ED78BC8P-340, 0x4.631BD2232F0C0P+588)), bareinterval(-0x6.599E84FEF71BCP+4, +0xB.1A5D77BC55F98P+4))

    @test isequal_interval(log10(bareinterval(0xF.C05EA810DFE88P-180, 0xA.05884FBED5F48P-152)), bareinterval(-0x3.4FCF2BC10B840P+4, -0x2.CC1706E0167D2P+4))

    @test isequal_interval(sin(bareinterval(-0xA.644C9D88EA8C8P-152, -0xD.8EC7927926F18P-944)), bareinterval(-0xA.644C9D88EA8C8P-152, -0xD.8EC7927926F10P-944))

    @test isequal_interval(sin(bareinterval(-0x1.9EE1A9DB994F5P-436, -0x6.D914701C82FECP-624)), bareinterval(-0x1.9EE1A9DB994F5P-436, -0x6.D914701C82FE8P-624))

    @test isequal_interval(sin(bareinterval(-0x5.65057F3EFFC60P+4, -0x2.3617CF5815ECAP-960)), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0))

    @test isequal_interval(sin(bareinterval(-0x1.975299CCB0E08P-372, +0xB.BEC7D35B45B00P-588)), bareinterval(-0x1.975299CCB0E08P-372, +0xB.BEC7D35B45B00P-588))

    @test isequal_interval(sin(bareinterval(-0x3.51D388D47AED2P-356, -0x1.C3A9CD7025105P-564)), bareinterval(-0x3.51D388D47AED2P-356, -0x1.C3A9CD7025104P-564))

    @test isequal_interval(sin(bareinterval(-0xC.DB363268CF708P-332, -0x2.171B7D7BFE4E0P-412)), bareinterval(-0xC.DB363268CF708P-332, -0x2.171B7D7BFE4DEP-412))

    @test isequal_interval(sin(bareinterval(-0x1.32690AAC2472DP-40, -0x8.706EBDCF39C88P-792)), bareinterval(-0x1.32690AAC2472DP-40, -0x8.706EBDCF39C80P-792))

    @test isequal_interval(sin(bareinterval(-0x5.0145AF0C53324P-200, -0x2.F5A0CB3301856P-204)), bareinterval(-0x5.0145AF0C53324P-200, -0x2.F5A0CB3301854P-204))

    @test isequal_interval(sin(bareinterval(0xF.4077C7E8CD6A0P-268, 0x3.753426098AC5AP-80)), bareinterval(0xF.4077C7E8CD698P-268, 0x3.753426098AC5AP-80))

    @test isequal_interval(sin(bareinterval(-0xB.B25F8D8BB7FB8P-376, -0x2.017A332F9B05CP-916)), bareinterval(-0xB.B25F8D8BB7FB8P-376, -0x2.017A332F9B05AP-916))

    @test isequal_interval(sin(bareinterval(-0xD.947CA427FDFE0P-592, +0xE.3BE493B5BC8E8P-16)), bareinterval(-0xD.947CA427FDFE0P-592, +0xE.3BE491D517170P-16))

    @test isequal_interval(sin(bareinterval(-0x9.C46198B2471F0P-336, -0x1.65ED85DF2D4B7P-576)), bareinterval(-0x9.C46198B2471F0P-336, -0x1.65ED85DF2D4B6P-576))

    @test isequal_interval(sin(bareinterval(-0x3.2C867C027DB44P-936, +0x6.1883EA827AB6CP-388)), bareinterval(-0x3.2C867C027DB44P-936, +0x6.1883EA827AB6CP-388))

    @test isequal_interval(sin(bareinterval(-0x3.560EF91C47DEAP-492, +0x5.413664DD17ABCP-20)), bareinterval(-0x3.560EF91C47DEAP-492, +0x5.413664DCFF7D4P-20))

    @test isequal_interval(sin(bareinterval(-0x8.36BFCD74A6D68P-304, -0x3.2C20EB130D510P-836)), bareinterval(-0x8.36BFCD74A6D68P-304, -0x3.2C20EB130D50EP-836))

    @test isequal_interval(sin(bareinterval(-0x6.BCEC84603958CP-500, -0x1.068B13DA99666P-760)), bareinterval(-0x6.BCEC84603958CP-500, -0x1.068B13DA99665P-760))

    @test isequal_interval(sin(bareinterval(-0x1.2789C2D583BCDP-568, -0x1.F2BD89DAD0665P-780)), bareinterval(-0x1.2789C2D583BCDP-568, -0x1.F2BD89DAD0664P-780))

    @test isequal_interval(sin(bareinterval(-0xC.FE4E8D857E3E0P-548, +0x1.580844B9DC45CP-780)), bareinterval(-0xC.FE4E8D857E3E0P-548, +0x1.580844B9DC45CP-780))

    @test isequal_interval(sin(bareinterval(-0xC.508D29ACB01B8P-52, +0x1.B1E6B793078DDP-664)), bareinterval(-0xC.508D29ACB01B8P-52, +0x1.B1E6B793078DDP-664))

    @test isequal_interval(sin(bareinterval(-0xA.12F7783880A78P-124, -0x3.765DF69EE106EP-548)), bareinterval(-0xA.12F7783880A78P-124, -0x3.765DF69EE106CP-548))

    @test isequal_interval(sin(bareinterval(-0x6.3A58D52FDF844P-896, -0x1.039E2518CF503P-1008)), bareinterval(-0x6.3A58D52FDF844P-896, -0x1.039E2518CF502P-1008))

    @test isequal_interval(sin(bareinterval(-0xB.DD3171FDEEC18P-168, +0x1.069E434EE9E0FP-740)), bareinterval(-0xB.DD3171FDEEC18P-168, +0x1.069E434EE9E0FP-740))

    @test isequal_interval(sin(bareinterval(-0x3.CF0053257533AP-776, -0x1.7883A587654E5P-928)), bareinterval(-0x3.CF0053257533AP-776, -0x1.7883A587654E4P-928))

    @test isequal_interval(sin(bareinterval(0x1.455801D3D2B63P-704, 0x3.A4C915783D07AP-28)), bareinterval(0x1.455801D3D2B62P-704, 0x3.A4C915783D07AP-28))

    @test isequal_interval(sin(bareinterval(-0x2.097D06F4DE3E2P-376, +0x2.2E7561FD9255EP-772)), bareinterval(-0x2.097D06F4DE3E2P-376, +0x2.2E7561FD9255EP-772))

    @test isequal_interval(sin(bareinterval(-0x1.7E13DBB66E5A3P-84, -0x6.BC8F45D6A8F48P-540)), bareinterval(-0x1.7E13DBB66E5A3P-84, -0x6.BC8F45D6A8F44P-540))

    @test isequal_interval(sin(bareinterval(-0x4.1F50C5F2CDA54P-276, -0x3.DF16F79756422P-496)), bareinterval(-0x4.1F50C5F2CDA54P-276, -0x3.DF16F79756420P-496))

    @test isequal_interval(sin(bareinterval(-0x7.ECC4C5EEC4CACP-328, -0x2.E02E1DB7A08F6P-876)), bareinterval(-0x7.ECC4C5EEC4CACP-328, -0x2.E02E1DB7A08F4P-876))

    @test isequal_interval(sin(bareinterval(-0xC.1BC7A4C89D440P-256, +0x2.A7F56252D1D34P-608)), bareinterval(-0xC.1BC7A4C89D440P-256, +0x2.A7F56252D1D34P-608))

    @test isequal_interval(sin(bareinterval(-0xB.CE50D7B2F2868P-236, -0xE.6B08988339B80P-432)), bareinterval(-0xB.CE50D7B2F2868P-236, -0xE.6B08988339B78P-432))

    @test isequal_interval(cos(bareinterval(-0xA.644C9D88EA8C8P-152, -0xD.8EC7927926F18P-944)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x1.9EE1A9DB994F5P-436, -0x6.D914701C82FECP-624)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x5.65057F3EFFC60P+4, -0x2.3617CF5815ECAP-960)), bareinterval(-0x1.0000000000000P+0, +0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x1.975299CCB0E08P-372, +0xB.BEC7D35B45B00P-588)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x3.51D388D47AED2P-356, -0x1.C3A9CD7025105P-564)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xC.DB363268CF708P-332, -0x2.171B7D7BFE4E0P-412)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x1.32690AAC2472DP-40, -0x8.706EBDCF39C88P-792)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x5.0145AF0C53324P-200, -0x2.F5A0CB3301856P-204)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(0xF.4077C7E8CD6A0P-268, 0x3.753426098AC5AP-80)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xB.B25F8D8BB7FB8P-376, -0x2.017A332F9B05CP-916)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xD.947CA427FDFE0P-592, +0xE.3BE493B5BC8E8P-16)), bareinterval(0xF.FFFFF9AB27E58P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x9.C46198B2471F0P-336, -0x1.65ED85DF2D4B7P-576)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x3.2C867C027DB44P-936, +0x6.1883EA827AB6CP-388)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x3.560EF91C47DEAP-492, +0x5.413664DD17ABCP-20)), bareinterval(0xF.FFFFFFFF231A0P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x8.36BFCD74A6D68P-304, -0x3.2C20EB130D510P-836)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x6.BCEC84603958CP-500, -0x1.068B13DA99666P-760)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x1.2789C2D583BCDP-568, -0x1.F2BD89DAD0665P-780)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xC.FE4E8D857E3E0P-548, +0x1.580844B9DC45CP-780)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xC.508D29ACB01B8P-52, +0x1.B1E6B793078DDP-664)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xA.12F7783880A78P-124, -0x3.765DF69EE106EP-548)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x6.3A58D52FDF844P-896, -0x1.039E2518CF503P-1008)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xB.DD3171FDEEC18P-168, +0x1.069E434EE9E0FP-740)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x3.CF0053257533AP-776, -0x1.7883A587654E5P-928)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(0x1.455801D3D2B63P-704, 0x3.A4C915783D07AP-28)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x2.097D06F4DE3E2P-376, +0x2.2E7561FD9255EP-772)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x1.7E13DBB66E5A3P-84, -0x6.BC8F45D6A8F48P-540)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x4.1F50C5F2CDA54P-276, -0x3.DF16F79756422P-496)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0x7.ECC4C5EEC4CACP-328, -0x2.E02E1DB7A08F6P-876)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xC.1BC7A4C89D440P-256, +0x2.A7F56252D1D34P-608)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(cos(bareinterval(-0xB.CE50D7B2F2868P-236, -0xE.6B08988339B80P-432)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tan(bareinterval(0x4.6AF931A62EB70P+4, 0x4.6C0D89ACF83F0P+4)), bareinterval(-0x4.2B94A5B864748P+16, -0xE.CC7EFFC39BBE8P+0))

    @test isequal_interval(tan(bareinterval(0x9.B824319678E98P+4, 0x9.B8365416B3188P+4)), bareinterval(-0x9.517610C9FF4F0P+28, -0xE.1DCEBD0ABA128P+4))

    @test isequal_interval(tan(bareinterval(0xE.231D6DE6B2910P+0, 0xE.232155989FD58P+0)), bareinterval(-0x1.1A74CC770CA81P+20, -0x4.09E5FC000B430P+12))

    @test isequal_interval(tan(bareinterval(0x3.A1E994576AF38P+4, 0x3.A1F62CB3D8B0CP+4)), bareinterval(-0x3.EDBBE63A85A20P+12, -0x1.3EC2E09B0B82DP+8))

    @test isequal_interval(tan(bareinterval(0x4.504512C674C88P+8, 0x4.5045147DF4570P+8)), bareinterval(-0xC.5E819F2BCA708P+28, -0x9.51D20751384C0P+12))

    @test isequal_interval(tan(bareinterval(0x7.DA9E8C267B000P+0, 0xA.CCC7028A13E50P+0)), bareinterval(-0x8.CE26DA7B8CCA8P+20, +0x5.0BA299C8F763CP+0))

    @test isequal_interval(tan(bareinterval(0xC.CA9E956E09870P+12, 0xC.CA9FEB35E8D28P+12)), bareinterval(-0x9.40D68D3420248P+16, -0xB.F4CB43C962B98P+0))

    @test isequal_interval(tan(bareinterval(0x2.F6B1D30E1AC2CP+8, 0x2.F6B1EAD90ED6EP+8)), bareinterval(-0x1.1E211833A60A2P+20, -0xA.BBFD5C235E8E8P+8))

    @test isequal_interval(tan(bareinterval(0xB.C33774AC8C510P+8, 0xB.C3378F9640B80P+8)), bareinterval(-0x3.B8E9A3359EA76P+12, -0x8.33C065B080F78P+8))

    @test isequal_interval(tan(bareinterval(0x4.B65F2027400ECP+0, 0x4.B65F690A4503CP+0)), bareinterval(-0x2.D46AD27DDB548P+24, -0x3.7ECF31F99ADC4P+16))

    @test isequal_interval(tan(bareinterval(0x3.C60A2C774D8A6P+8, 0x3.C60A76B28E42CP+8)), bareinterval(-0x3.28E3C44C11B44P+24, -0x3.72D85B31BD660P+8))

    @test isequal_interval(tan(bareinterval(0x7.DA9E8A5DF3B7CP+0, 0x7.DAA9CFE45466CP+0)), bareinterval(-0x1.D9B11082E8FC3P+28, -0x1.6B6333E88C1DFP+12))

    @test isequal_interval(tan(bareinterval(0x3.A1E953315B022P+4, 0x3.A3624FC9B84C0P+4)), bareinterval(-0x4.91A5298A762FCP+24, -0xA.D59BACA695F48P+0))

    @test isequal_interval(tan(bareinterval(0x7.DA9E8AB1B7B7CP+0, 0x8.E4A2BCBB988B0P+0)), bareinterval(-0x2.C52AD8545AC54P+24, -0x9.691CCDB9751E8P-4))

    @test isequal_interval(tan(bareinterval(0x5.48783C12B018CP+8, 0x5.487863A8A0C78P+8)), bareinterval(-0x4.7465D978FF1E8P+4, -0x4.455187267B294P+4))

    @test isequal_interval(tan(bareinterval(0x1.AB41B772619C2P+4, 0x1.AB96C295E1A23P+4)), bareinterval(-0x2.55DE9F429F276P+16, -0x3.02439C1296068P+4))

    @test isequal_interval(tan(bareinterval(0x1.87E20C8B7CCC1P+16, 0x1.87E20E060934FP+16)), bareinterval(-0x7.5F7BB0C55311CP+28, -0xA.D1F5D5F3730E8P+4))

    @test isequal_interval(tan(bareinterval(0x2.5BA5629043048P+16, 0x2.5BA5A6106DDF4P+16)), bareinterval(-0x4.BDE3C915168D8P+4, -0x3.84ED584601B4CP+0))

    @test isequal_interval(tan(bareinterval(0x1.A9AF913EE27CFP+8, 0x1.A9AFA6D06E549P+8)), bareinterval(-0x2.CB455269CB954P+16, -0xB.ACE6E2EAA9098P+8))

    @test isequal_interval(tan(bareinterval(0x7.64CF403A51948P+8, 0x7.64D139F1912E4P+8)), bareinterval(-0x5.38F704820A47CP+28, -0x8.19686283B81E8P+4))

    @test isequal_interval(tan(bareinterval(0x4.1437B08F8BA70P+16, 0x4.1439A27E86D50P+16)), bareinterval(-0x1.3ADB30F7A9B56P+24, +0x6.48C7464A8F9A0P-4))

    @test isequal_interval(tan(bareinterval(0x2.74518B3BAFB7CP+4, 0x2.74518DE5A60C0P+4)), bareinterval(-0xF.8E3A10DB36640P+24, -0x5.FF456443FD8B8P+16))

    @test isequal_interval(tan(bareinterval(0x1.DD85A7816A0FFP+4, 0x1.DD89849DFDF09P+4)), bareinterval(-0x3.FA5C8BD1A67ECP+20, -0x4.23D96B0387510P+8))

    @test isequal_interval(tan(bareinterval(0x1.AB41B29964887P+4, 0x1.B5CBD4ED0D1DDP+4)), bareinterval(-0x7.FC8B577B97310P+16, -0x1.4AB8A7BB81552P+0))

    @test isequal_interval(tan(bareinterval(0x1.19454E95BC804P+12, 0x1.194551E9AD95AP+12)), bareinterval(-0x1.2A53ECF4C9B1AP+12, -0x3.D27F074C2DA94P+8))

    @test isequal_interval(tan(bareinterval(0x4.C4823D2C30D00P+8, 0x4.C482DEAE395CCP+8)), bareinterval(-0x7.F7B434A3F3544P+28, -0x1.95C659F53B09BP+8))

    @test isequal_interval(tan(bareinterval(0x1.DD85BAAB9BAF9P+4, 0x1.DD8660423BAACP+4)), bareinterval(-0xD.2F5338751C9C8P+12, -0x1.623D682415BE0P+12))

    @test isequal_interval(tan(bareinterval(0x2.F798BB3536690P+16, 0x2.F79A363308C32P+16)), bareinterval(-0x2.F8C1AC15A9CCEP+16, -0x1.731B7ACF94603P-4))

    @test isequal_interval(tan(bareinterval(0x1.78FDB9F143616P+4, 0x1.78FDB9F143616P+4)), bareinterval(-0xC.9CFD638FE0A18P+24, -0xC.9CFD638FE0A10P+24))

    @test isequal_interval(tan(bareinterval(0x1.78FDB9F143616P+4, 0x1.79367E02D4EAAP+4)), bareinterval(-0xC.9CFD638FE0A18P+24, -0x4.826BF805C4E68P+4))

    @test isequal_interval(cot(bareinterval(0x4.51D73651EA89CP+4, 0x4.52EB8E58B411CP+4)), bareinterval(0xE.CC7EFFC39DE08P+0, 0x4.2B94A5E391E20P+16))

    @test isequal_interval(cot(bareinterval(0x9.9F02364234BC8P+4, 0x9.9F1458C26EEB8P+4)), bareinterval(0xE.1DCEBD0AA72D0P+4, 0x9.516DD4FA21CF0P+28))

    @test isequal_interval(cot(bareinterval(0xC.90FDB8A26FBF8P+0, 0xC.9101A0545D040P+0)), bareinterval(0x4.09E5FC0006C38P+12, 0x1.1A74CC76B6B71P+20))

    @test isequal_interval(cot(bareinterval(0x3.88C7990326C68P+4, 0x3.88D4315F9483CP+4)), bareinterval(0x1.3EC2E09B0928AP+8, 0x3.EDBBE6390EF44P+12))

    @test isequal_interval(cot(bareinterval(0x4.4EB2F3113085CP+8, 0x4.4EB2F4C8B0144P+8)), bareinterval(0x9.51D206F220E70P+12, 0xC.5DDA26E3680B8P+28))

    @test isequal_interval(cot(bareinterval(0x6.487ED6E2382ECP+0, 0x9.3AA74D45D1138P+0)), bareinterval(-0x5.0BA299C8F7644P+0, +0x8.CE26D93009840P+20))

    @test isequal_interval(cot(bareinterval(0xC.CA857372B5428P+12, 0xC.CA86C93A948E0P+12)), bareinterval(0xB.F4CB43CC4C9E8P+0, 0x9.40D848DDFC130P+16))

    @test isequal_interval(cot(bareinterval(0x2.F51FB358D6800P+8, 0x2.F51FCB23CA942P+8)), bareinterval(0xA.BBFD5C1B7C1D8P+8, 0x1.1E2116D584957P+20))

    @test isequal_interval(cot(bareinterval(0xB.C1A554F7480E0P+8, 0xB.C1A56FE0FC750P+8)), bareinterval(0x8.33C065BCB81C8P+8, 0x3.B8E9A35DDF6BCP+12))

    @test isequal_interval(cot(bareinterval(0x3.243F6AE2FD3D8P+0, 0x3.243FB3C602324P+0)), bareinterval(0x3.7ECF31F964F42P+16, 0x2.D46AD05A0B746P+24))

    @test isequal_interval(cot(bareinterval(0x3.C4780CC209478P+8, 0x3.C47856FD49FFEP+8)), bareinterval(0x3.72D85B3269A44P+8, 0x3.28E454E439A90P+24))

    @test isequal_interval(cot(bareinterval(0x6.487ED519B0E68P+0, 0x6.488A1AA011958P+0)), bareinterval(0x1.6B6333E883806P+12, 0x1.D9B101DF34E20P+28))

    @test isequal_interval(cot(bareinterval(0x3.88C757DD16D52P+4, 0x3.8A405475741F0P+4)), bareinterval(0xA.D59BACA695410P+0, 0x4.91A509DE53224P+24))

    @test isequal_interval(cot(bareinterval(0x6.487ED56D74E68P+0, 0x7.5283077755B9CP+0)), bareinterval(0x9.691CCDB975190P-4, 0x2.C52AD6475D346P+24))

    @test isequal_interval(cot(bareinterval(0x5.46E61C5D6BD60P+8, 0x5.46E643F35C84CP+8)), bareinterval(0x4.4551872667304P+4, 0x4.7465D978E9638P+4))

    @test isequal_interval(cot(bareinterval(0x1.921FBC1E1D6F1P+4, 0x1.9274C7419D752P+4)), bareinterval(0x3.02439C1295BB8P+4, 0x2.55DE9F3FCCF28P+16))

    @test isequal_interval(cot(bareinterval(0x1.87E07A6BC787DP+16, 0x1.87E07BE653F0BP+16)), bareinterval(0xA.D1F5D5DED35E0P+4, 0x7.55F4ABD4357C8P+28))

    @test isequal_interval(cot(bareinterval(0x2.5BA3D0708DC04P+16, 0x2.5BA413F0B89B0P+16)), bareinterval(0x3.84ED5845DBFB2P+0, 0x4.BDE3C91120740P+4))

    @test isequal_interval(cot(bareinterval(0x1.A81D71899E3A2P+8, 0x1.A81D871B2A11CP+8)), bareinterval(0xB.ACE6E2E9DA370P+8, 0x2.CB45525DF368EP+16))

    @test isequal_interval(cot(bareinterval(0x7.633D20850D51CP+8, 0x7.633F1A3C4CEB8P+8)), bareinterval(0x8.19686283704C0P+4, 0x5.38D928BC4D11CP+28))

    @test isequal_interval(cot(bareinterval(0x4.14361E6FD662CP+16, 0x4.1438105ED190CP+16)), bareinterval(-0x6.48C7464AC3A74P-4, +0x1.3AD6ED9B4C193P+24))

    @test isequal_interval(cot(bareinterval(0x2.5B2F8FE76B8ACP+4, 0x2.5B2F929161DF0P+4)), bareinterval(0x5.FF45640D6BF8CP+16, 0xF.8E38A1B8F3CE0P+24))

    @test isequal_interval(cot(bareinterval(0x1.C463AC2D25E2EP+4, 0x1.C4678949B9C38P+4)), bareinterval(0x4.23D96B037E734P+8, 0x3.FA5C8B4EB13BAP+20))

    @test isequal_interval(cot(bareinterval(0x1.921FB745205B6P+4, 0x1.9CA9D998C8F0CP+4)), bareinterval(0x1.4AB8A7BB8153CP+0, 0x7.FC8B575A99618P+16))

    @test isequal_interval(cot(bareinterval(0x1.192C2C9A683C1P+12, 0x1.192C2FEE59517P+12)), bareinterval(0x3.D27F074ED4C1AP+8, 0x1.2A53ECF8BBB09P+12))

    @test isequal_interval(cot(bareinterval(0x4.C2F01D76EC8D4P+8, 0x4.C2F0BEF8F51A0P+8)), bareinterval(0x1.95C659F50F06FP+8, 0x7.F76EB663A7898P+28))

    @test isequal_interval(cot(bareinterval(0x1.C463BF5757828P+4, 0x1.C46464EDF77DBP+4)), bareinterval(0x1.623D682405E56P+12, 0xD.2F53386F7DF28P+12))

    @test isequal_interval(cot(bareinterval(0x2.F79729158124CP+16, 0x2.F798A413537EEP+16)), bareinterval(0x1.731B7ACF66E92P-4, 0x2.F8C19331ECBFCP+16))

    @test isequal_interval(cot(bareinterval(0x3.371943E536E9EP+8, 0x3.371D0784693FAP+8)), bareinterval(0x3.E06D09FC7DDC2P+4, 0x2.C1B5E6F32FDEEP+8))

    @test isequal_interval(cot(bareinterval(0x1.5FDBBE9CFF344P+4, 0x1.601482AE90BD8P+4)), bareinterval(0x4.826BF805C583CP+4, 0xC.9CFDB05DEF930P+24))

    @test isequal_interval(asin(bareinterval(-0x3.11A309475E762P-164, -0xC.3784302E15500P-680)), bareinterval(-0x3.11A309475E764P-164, -0xC.3784302E15500P-680))

    @test isequal_interval(asin(bareinterval(-0x5.7DD17A4248D38P-280, -0x2.898FC0F386F74P-640)), bareinterval(-0x5.7DD17A4248D3CP-280, -0x2.898FC0F386F74P-640))

    @test isequal_interval(asin(bareinterval(-0xE.D83DCD7F564A0P-296, -0x1.62F61FBA0F40FP-764)), bareinterval(-0xE.D83DCD7F564A8P-296, -0x1.62F61FBA0F40FP-764))

    @test isequal_interval(asin(bareinterval(-0x1.67712A1E64C2CP-944, -0x1.C0102C4D258EFP-976)), bareinterval(-0x1.67712A1E64C2DP-944, -0x1.C0102C4D258EFP-976))

    @test isequal_interval(asin(bareinterval(0x2.E3D991AE84668P-728, 0x1.92C3C728CCF4AP-612)), bareinterval(0x2.E3D991AE84668P-728, 0x1.92C3C728CCF4BP-612))

    @test isequal_interval(asin(bareinterval(-0x1.BCD3FEB3B0175P-640, +0x1.BEBE69E3BF3C2P-536)), bareinterval(-0x1.BCD3FEB3B0176P-640, +0x1.BEBE69E3BF3C3P-536))

    @test isequal_interval(asin(bareinterval(-0x1.2469575189327P-372, -0x7.51C0C39F58A4CP-1008)), bareinterval(-0x1.2469575189328P-372, -0x7.51C0C39F58A4CP-1008))

    @test isequal_interval(asin(bareinterval(-0x1.C4D163A6CCCD9P-336, -0x1.3BEE6DAB70397P-796)), bareinterval(-0x1.C4D163A6CCCDAP-336, -0x1.3BEE6DAB70397P-796))

    @test isequal_interval(asin(bareinterval(-0x2.0FAE5DE90C98CP-896, -0x2.2079777EC2418P-976)), bareinterval(-0x2.0FAE5DE90C98EP-896, -0x2.2079777EC2418P-976))

    @test isequal_interval(asin(bareinterval(-0x1.08C248C37E53BP-816, +0x2.8C9F04EE5DE84P-948)), bareinterval(-0x1.08C248C37E53CP-816, +0x2.8C9F04EE5DE86P-948))

    @test isequal_interval(asin(bareinterval(-0x2.0002542B01474P-228, +0x2.4D59F217BF74CP-796)), bareinterval(-0x2.0002542B01476P-228, +0x2.4D59F217BF74EP-796))

    @test isequal_interval(asin(bareinterval(0xD.D4033889729A0P-844, 0x7.44451BF919D78P-556)), bareinterval(0xD.D4033889729A0P-844, 0x7.44451BF919D7CP-556))

    @test isequal_interval(asin(bareinterval(-0x2.08918B016995CP-64, +0x3.3FC26450C6E4AP-268)), bareinterval(-0x2.08918B016995EP-64, +0x3.3FC26450C6E4CP-268))

    @test isequal_interval(asin(bareinterval(-0x2.66C95BD8D7716P-388, +0x1.7E16B310F878AP-232)), bareinterval(-0x2.66C95BD8D7718P-388, +0x1.7E16B310F878BP-232))

    @test isequal_interval(asin(bareinterval(-0x3.D9C66BD30B774P-256, -0x4.A8C30F678CB68P-456)), bareinterval(-0x3.D9C66BD30B776P-256, -0x4.A8C30F678CB68P-456))

    @test isequal_interval(asin(bareinterval(-0x1.AA045CCB15AEDP-804, +0xD.450C473265610P-24)), bareinterval(-0x1.AA045CCB15AEEP-804, +0xD.450C473266E68P-24))

    @test isequal_interval(asin(bareinterval(-0x2.23ADFA571FC3CP-344, -0x1.30D1074DC059EP-868)), bareinterval(-0x2.23ADFA571FC3EP-344, -0x1.30D1074DC059EP-868))

    @test isequal_interval(asin(bareinterval(-0x3.DFBC1A4BF3888P-68, -0x4.A89E39B247C84P-840)), bareinterval(-0x3.DFBC1A4BF388AP-68, -0x4.A89E39B247C84P-840))

    @test isequal_interval(asin(bareinterval(0x9.583064525D370P-496, 0x2.C67652F06A55EP-408)), bareinterval(0x9.583064525D370P-496, 0x2.C67652F06A560P-408))

    @test isequal_interval(asin(bareinterval(-0x3.38BF880EC3082P-304, -0x7.7B19877E536ACP-512)), bareinterval(-0x3.38BF880EC3084P-304, -0x7.7B19877E536ACP-512))

    @test isequal_interval(asin(bareinterval(-0x2.ADBF037238702P-44, +0x1.98DC940C3AE1EP-564)), bareinterval(-0x2.ADBF037238704P-44, +0x1.98DC940C3AE1FP-564))

    @test isequal_interval(asin(bareinterval(-0x4.E4A79C48B3A58P-328, +0xA.28B02E59D39D8P-856)), bareinterval(-0x4.E4A79C48B3A5CP-328, +0xA.28B02E59D39E0P-856))

    @test isequal_interval(asin(bareinterval(-0x6.80D3E87B911D8P-232, -0x2.3DF54212C46E4P-520)), bareinterval(-0x6.80D3E87B911DCP-232, -0x2.3DF54212C46E4P-520))

    @test isequal_interval(asin(bareinterval(-0x1.4E54C309C46F8P-480, +0x9.47E982AC83F98P-688)), bareinterval(-0x1.4E54C309C46F9P-480, +0x9.47E982AC83FA0P-688))

    @test isequal_interval(asin(bareinterval(-0x2.276202227A6DEP-808, +0x1.C53E9BA64FADFP-768)), bareinterval(-0x2.276202227A6E0P-808, +0x1.C53E9BA64FAE0P-768))

    @test isequal_interval(asin(bareinterval(-0x4.8E4B4D7BA6DD0P-212, -0x1.4B35284C1064BP-548)), bareinterval(-0x4.8E4B4D7BA6DD4P-212, -0x1.4B35284C1064BP-548))

    @test isequal_interval(asin(bareinterval(-0x3.5C52B8D9FF582P-248, -0x2.AF868D652B866P-912)), bareinterval(-0x3.5C52B8D9FF584P-248, -0x2.AF868D652B866P-912))

    @test isequal_interval(asin(bareinterval(0x1.6938CC5EE183AP-692, 0xB.F7A583AC38168P-664)), bareinterval(0x1.6938CC5EE183AP-692, 0xB.F7A583AC38170P-664))

    @test isequal_interval(asin(bareinterval(-0x3.68B35F23B2506P-560, +0x9.F9C9246D05138P-304)), bareinterval(-0x3.68B35F23B2508P-560, +0x9.F9C9246D05140P-304))

    @test isequal_interval(asin(bareinterval(-0xA.BDE70B6850EA0P-516, +0x2.BB76D5BF703FAP-1020)), bareinterval(-0xA.BDE70B6850EA8P-516, +0x2.BB76D5BF703FCP-1020))

    @test isequal_interval(acos(bareinterval(-0x3.11A309475E762P-164, -0xC.3784302E15500P-680)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x5.7DD17A4248D38P-280, -0x2.898FC0F386F74P-640)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0xE.D83DCD7F564A0P-296, -0x1.62F61FBA0F40FP-764)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.67712A1E64C2CP-944, -0x1.C0102C4D258EFP-976)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(0x2.E3D991AE84668P-728, 0x1.92C3C728CCF4AP-612)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.BCD3FEB3B0175P-640, +0x1.BEBE69E3BF3C2P-536)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.2469575189327P-372, -0x7.51C0C39F58A4CP-1008)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.C4D163A6CCCD9P-336, -0x1.3BEE6DAB70397P-796)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.0FAE5DE90C98CP-896, -0x2.2079777EC2418P-976)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.08C248C37E53BP-816, +0x2.8C9F04EE5DE84P-948)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.0002542B01474P-228, +0x2.4D59F217BF74CP-796)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(0xD.D4033889729A0P-844, 0x7.44451BF919D78P-556)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.08918B016995CP-64, +0x3.3FC26450C6E4AP-268)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.66C95BD8D7716P-388, +0x1.7E16B310F878AP-232)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x3.D9C66BD30B774P-256, -0x4.A8C30F678CB68P-456)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.AA045CCB15AEDP-804, +0xD.450C473265610P-24)), bareinterval(0x1.921FA7FF368A5P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.23ADFA571FC3CP-344, -0x1.30D1074DC059EP-868)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x3.DFBC1A4BF3888P-68, -0x4.A89E39B247C84P-840)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(0x9.583064525D370P-496, 0x2.C67652F06A55EP-408)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x3.38BF880EC3082P-304, -0x7.7B19877E536ACP-512)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.ADBF037238702P-44, +0x1.98DC940C3AE1EP-564)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442FC7P+0))

    @test isequal_interval(acos(bareinterval(-0x4.E4A79C48B3A58P-328, +0xA.28B02E59D39D8P-856)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x6.80D3E87B911D8P-232, -0x2.3DF54212C46E4P-520)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x1.4E54C309C46F8P-480, +0x9.47E982AC83F98P-688)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x2.276202227A6DEP-808, +0x1.C53E9BA64FADFP-768)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x4.8E4B4D7BA6DD0P-212, -0x1.4B35284C1064BP-548)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x3.5C52B8D9FF582P-248, -0x2.AF868D652B866P-912)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(0x1.6938CC5EE183AP-692, 0xB.F7A583AC38168P-664)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0x3.68B35F23B2506P-560, +0x9.F9C9246D05138P-304)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acos(bareinterval(-0xA.BDE70B6850EA0P-516, +0x2.BB76D5BF703FAP-1020)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x1.7A77BFCCF5A9EP-232, 0x2.8457BC029986EP+112)), bareinterval(0x1.7A77BFCCF5A9DP-232, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x3.C5EC30FBB68C8P-508, 0x6.05C0BB1BCB730P-220)), bareinterval(0x3.C5EC30FBB68C6P-508, 0x6.05C0BB1BCB730P-220))

    @test isequal_interval(atan(bareinterval(0xE.20FF41BD18058P-204, 0x2.9B09919BF9D9EP+272)), bareinterval(0xE.20FF41BD18050P-204, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x2.075DF98B2478CP-456, 0x1.1503444763FC5P-416)), bareinterval(0x2.075DF98B2478AP-456, 0x1.1503444763FC5P-416))

    @test isequal_interval(atan(bareinterval(0x1.5444E676976F1P+252, 0x2.7C064F6929234P+292)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x1.3A01905E36F84P+0, 0x4.ECBC855871080P+332)), bareinterval(0xE.3062E34353278P-4, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x2.404E44C49C644P-440, 0x7.32EDAB7F60A50P+236)), bareinterval(0x2.404E44C49C642P-440, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x1.63A15E999EB64P-344, 0x6.5263CF84EF388P+172)), bareinterval(0x1.63A15E999EB63P-344, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x6.941F470A70074P-756, 0x1.4171976A1CA54P-288)), bareinterval(0x6.941F470A70070P-756, 0x1.4171976A1CA54P-288))

    @test isequal_interval(atan(bareinterval(0x7.78A1F475A306CP-564, 0x4.69BB1D34B9570P-76)), bareinterval(0x7.78A1F475A3068P-564, 0x4.69BB1D34B9570P-76))

    @test isequal_interval(atan(bareinterval(0x1.BA04D452BBB35P+180, 0x1.F0D19ADCB5D74P+312)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x2.6ABC15579B2B2P-48, 0x2.E046DB554037CP+256)), bareinterval(0x2.6ABC15579B2B0P-48, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x8.297A99ED9ED08P+8, 0xE.33C49CF5B8790P+652)), bareinterval(0x1.920057E3A66F1P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x3.436DFE8F08194P+48, 0x2.A69A969772FDEP+688)), bareinterval(0x1.921FB54442D13P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x6.3E590E626451CP-172, 0x1.7AAA15EBBD3F2P+8)), bareinterval(0x6.3E590E6264518P-172, 0x1.9172A3136EB8DP+0))

    @test isequal_interval(atan(bareinterval(0x6.ACFA418D8F92CP-544, 0x2.8F9204BC4041EP+988)), bareinterval(0x6.ACFA418D8F928P-544, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x2.BB570B356C6CAP-440, 0x2.B00450A48D586P-148)), bareinterval(0x2.BB570B356C6C8P-440, 0x2.B00450A48D586P-148))

    @test isequal_interval(atan(bareinterval(0xC.41329461A0C30P-512, 0x1.9E7DDBBE00F75P+352)), bareinterval(0xC.41329461A0C28P-512, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x6.6978492A3064CP+188, 0xD.5E2045CEE9720P+236)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x7.DEA605DEC97CCP-316, 0x1.5BD629B25AA23P-236)), bareinterval(0x7.DEA605DEC97C8P-316, 0x1.5BD629B25AA23P-236))

    @test isequal_interval(atan(bareinterval(0xD.05E9CCF66CF58P+424, 0xB.A944253373080P+564)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x6.65D7E0A247778P-56, 0x3.AE1DC13A652CAP+168)), bareinterval(0x6.65D7E0A247774P-56, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x5.2B55801231EC8P-344, 0xA.27B4555158148P-68)), bareinterval(0x5.2B55801231EC4P-344, 0xA.27B4555158148P-68))

    @test isequal_interval(atan(bareinterval(0x6.36B661DCE2688P-236, 0x1.D68A6BA7E617FP+12)), bareinterval(0x6.36B661DCE2684P-236, 0x1.921700D14CFE5P+0))

    @test isequal_interval(atan(bareinterval(0x1.EB0E1AB78F314P-480, 0x1.98EF0C6A8BD66P+132)), bareinterval(0x1.EB0E1AB78F313P-480, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x7.4CF193131FA64P-192, 0x1.C08152CC09416P+220)), bareinterval(0x7.4CF193131FA60P-192, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x1.7036C237D5B00P-672, 0x6.F70E0DA4D2BA0P-140)), bareinterval(0x1.7036C237D5AFFP-672, 0x6.F70E0DA4D2BA0P-140))

    @test isequal_interval(atan(bareinterval(0x1.D283CF8F05665P+252, 0xB.24D19E00C8460P+324)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x3.A0EE84451C92CP-324, 0xF.CC937FA330E40P+648)), bareinterval(0x3.A0EE84451C92AP-324, 0x1.921FB54442D19P+0))

    @test isequal_interval(atan(bareinterval(0x1.8BCA641025A83P-124, 0x5.F775993940188P-120)), bareinterval(0x1.8BCA641025A82P-124, 0x5.F775993940188P-120))

    @test isequal_interval(acot(bareinterval(0x1.7A77BFCCF5A9EP-232, 0x2.8457BC029986EP+112)), bareinterval(0x6.5B5B8AA0A6884P-116, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x3.C5EC30FBB68C8P-508, 0x6.05C0BB1BCB730P-220)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0xE.20FF41BD18058P-204, 0x2.9B09919BF9D9EP+272)), bareinterval(0x6.23FD67FFA09A4P-276, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x2.075DF98B2478CP-456, 0x1.1503444763FC5P-416)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.5444E676976F1P+252, 0x2.7C064F6929234P+292)), bareinterval(0x6.70A3F8408ABF0P-296, 0xC.099B90EB0FA30P-256))

    @test isequal_interval(acot(bareinterval(0x1.3A01905E36F84P+0, 0x4.ECBC855871080P+332)), bareinterval(0x3.3FB79247499D6P-336, 0xA.F1987100D9F08P-4))

    @test isequal_interval(acot(bareinterval(0x2.404E44C49C644P-440, 0x7.32EDAB7F60A50P+236)), bareinterval(0x2.38F904C465F6AP-240, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.63A15E999EB64P-344, 0x6.5263CF84EF388P+172)), bareinterval(0x2.87E9C09D98938P-176, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x6.941F470A70074P-756, 0x1.4171976A1CA54P-288)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x7.78A1F475A306CP-564, 0x4.69BB1D34B9570P-76)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.BA04D452BBB35P+180, 0x1.F0D19ADCB5D74P+312)), bareinterval(0x8.3E949ACCB0F88P-316, 0x9.443E1DD721FE8P-184))

    @test isequal_interval(acot(bareinterval(0x2.6ABC15579B2B2P-48, 0x2.E046DB554037CP+256)), bareinterval(0x5.9028FAA64FBC8P-260, 0x1.921FB54442CF2P+0))

    @test isequal_interval(acot(bareinterval(0x8.297A99ED9ED08P+8, 0xE.33C49CF5B8790P+652)), bareinterval(0x1.2067D7F96AFE5P-656, 0x1.F5D609C62725FP-12))

    @test isequal_interval(acot(bareinterval(0x3.436DFE8F08194P+48, 0x2.A69A969772FDEP+688)), bareinterval(0x6.09322FE56F794P-692, 0x4.E7223FE097808P-52))

    @test isequal_interval(acot(bareinterval(0x6.3E590E626451CP-172, 0x1.7AAA15EBBD3F2P+8)), bareinterval(0xA.D1230D418C238P-12, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x6.ACFA418D8F92CP-544, 0x2.8F9204BC4041EP+988)), bareinterval(0x6.3F7C8D3DDFC74P-992, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x2.BB570B356C6CAP-440, 0x2.B00450A48D586P-148)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0xC.41329461A0C30P-512, 0x1.9E7DDBBE00F75P+352)), bareinterval(0x9.E1C9C04F15630P-356, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x6.6978492A3064CP+188, 0xD.5E2045CEE9720P+236)), bareinterval(0x1.326922CF32B2EP-240, 0x2.7ECD966556E9CP-192))

    @test isequal_interval(acot(bareinterval(0x7.DEA605DEC97CCP-316, 0x1.5BD629B25AA23P-236)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0xD.05E9CCF66CF58P+424, 0xB.A944253373080P+564)), bareinterval(0x1.5F401B7014200P-568, 0x1.3A84A0CB7AC42P-428))

    @test isequal_interval(acot(bareinterval(0x6.65D7E0A247778P-56, 0x3.AE1DC13A652CAP+168)), bareinterval(0x4.59002C447A028P-172, 0x1.921FB54442D18P+0))

    @test isequal_interval(acot(bareinterval(0x5.2B55801231EC8P-344, 0xA.27B4555158148P-68)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x6.36B661DCE2688P-236, 0x1.D68A6BA7E617FP+12)), bareinterval(0x8.B472F5D335130P-16, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.EB0E1AB78F314P-480, 0x1.98EF0C6A8BD66P+132)), bareinterval(0xA.042BAEF7787B8P-136, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x7.4CF193131FA64P-192, 0x1.C08152CC09416P+220)), bareinterval(0x9.21EF65D6A5190P-224, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.7036C237D5B00P-672, 0x6.F70E0DA4D2BA0P-140)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.D283CF8F05665P+252, 0xB.24D19E00C8460P+324)), bareinterval(0x1.6F8ED062CAC9BP-328, 0x8.C7ADFB6368868P-256))

    @test isequal_interval(acot(bareinterval(0x3.A0EE84451C92CP-324, 0xF.CC937FA330E40P+648)), bareinterval(0x1.03413E0E19942P-652, 0x1.921FB54442D19P+0))

    @test isequal_interval(acot(bareinterval(0x1.8BCA641025A83P-124, 0x5.F775993940188P-120)), bareinterval(0x1.921FB54442D18P+0, 0x1.921FB54442D19P+0))

    @test isequal_interval(sinh(bareinterval(-0x3.53DC9496DE0A0P-160, -0xC.287E0E10EC1B8P-960)), bareinterval(-0x3.53DC9496DE0A2P-160, -0xC.287E0E10EC1B8P-960))

    @test isequal_interval(sinh(bareinterval(-0x1.CF3637DCBCC9AP-452, -0x5.E4846462FF33CP-636)), bareinterval(-0x1.CF3637DCBCC9BP-452, -0x5.E4846462FF33CP-636))

    @test isequal_interval(sinh(bareinterval(-0x1.0362421843787P+0, -0x3.3D2CCEF698A5AP-972)), bareinterval(-0x1.32197576F3697P+0, -0x3.3D2CCEF698A5AP-972))

    @test isequal_interval(sinh(bareinterval(-0x1.494A24A7585D1P-380, +0x1.A0790A9E3013EP-604)), bareinterval(-0x1.494A24A7585D2P-380, +0x1.A0790A9E3013FP-604))

    @test isequal_interval(sinh(bareinterval(-0x2.B64BC5E999866P-368, -0xF.0633041110C28P-572)), bareinterval(-0x2.B64BC5E999868P-368, -0xF.0633041110C28P-572))

    @test isequal_interval(sinh(bareinterval(-0x7.56F52F4FED854P-336, -0x4.F40A3934B3354P-416)), bareinterval(-0x7.56F52F4FED858P-336, -0x4.F40A3934B3354P-416))

    @test isequal_interval(sinh(bareinterval(-0xA.0E33C2BA95C88P-48, -0x1.1927CA3847669P-808)), bareinterval(-0xA.0E33C2BA95C90P-48, -0x1.1927CA3847669P-808))

    @test isequal_interval(sinh(bareinterval(-0x1.1BBBD6FE8B950P-208, -0x1.463A32DBA649DP-220)), bareinterval(-0x1.1BBBD6FE8B951P-208, -0x1.463A32DBA649DP-220))

    @test isequal_interval(sinh(bareinterval(0x5.290FE84915530P-268, 0x1.8C9AF520C22C3P-96)), bareinterval(0x5.290FE84915530P-268, 0x1.8C9AF520C22C4P-96))

    @test isequal_interval(sinh(bareinterval(-0x2.E7332C654ABB6P-384, -0x1.4363967367F55P-932)), bareinterval(-0x2.E7332C654ABB8P-384, -0x1.4363967367F55P-932))

    @test isequal_interval(sinh(bareinterval(-0x1.55EBB1D70A46EP-592, +0x4.733FA51468530P-20)), bareinterval(-0x1.55EBB1D70A46FP-592, +0x4.733FA51477038P-20))

    @test isequal_interval(sinh(bareinterval(-0x1.1B4B8388A3D92P-340, -0xD.51D4A3CE4C490P-600)), bareinterval(-0x1.1B4B8388A3D93P-340, -0xD.51D4A3CE4C490P-600))

    @test isequal_interval(sinh(bareinterval(-0x4.21B73745BC4C0P-952, +0xD.E40D83923C3E0P-404)), bareinterval(-0x4.21B73745BC4C4P-952, +0xD.E40D83923C3E8P-404))

    @test isequal_interval(sinh(bareinterval(-0x1.73D14FA7DA1CBP-504, +0x1.5B3AFEEB17A85P-28)), bareinterval(-0x1.73D14FA7DA1CCP-504, +0x1.5B3AFEEB17A86P-28))

    @test isequal_interval(sinh(bareinterval(-0x3.3CD34997DF066P-320, -0x1.606C7BCE75819P-852)), bareinterval(-0x3.3CD34997DF068P-320, -0x1.606C7BCE75819P-852))

    @test isequal_interval(sinh(bareinterval(-0xC.5356A56E59748P-516, -0x1.33B9A95C55513P-772)), bareinterval(-0xC.5356A56E59750P-516, -0x1.33B9A95C55513P-772))

    @test isequal_interval(sinh(bareinterval(-0x5.FA887950A63CCP-588, -0x2.B707741B15478P-800)), bareinterval(-0x5.FA887950A63D0P-588, -0x2.B707741B15478P-800))

    @test isequal_interval(sinh(bareinterval(-0x2.9476464AAE5BAP-548, +0x4.0734E17C026D4P-784)), bareinterval(-0x2.9476464AAE5BCP-548, +0x4.0734E17C026D8P-784))

    @test isequal_interval(sinh(bareinterval(-0xF.A46AC05B0EAA8P-68, +0x1.EFA89F34F4188P-684)), bareinterval(-0xF.A46AC05B0EAB0P-68, +0x1.EFA89F34F4189P-684))

    @test isequal_interval(sinh(bareinterval(-0x9.9488CB205AFA8P-124, -0x2.940180D1AA2AEP-556)), bareinterval(-0x9.9488CB205AFB0P-124, -0x2.940180D1AA2AEP-556))

    @test isequal_interval(sinh(bareinterval(-0x3.F9D9FE5792CE0P-912, -0x3.F00FC8CE24ADCP-1016)), bareinterval(-0x3.F9D9FE5792CE2P-912, -0x3.F00FC8CE24ADCP-1016))

    @test isequal_interval(sinh(bareinterval(-0x7.D5A28EF80D6B0P-176, +0xC.5D2B8FFCB2AD8P-756)), bareinterval(-0x7.D5A28EF80D6B4P-176, +0xC.5D2B8FFCB2AE0P-756))

    @test isequal_interval(sinh(bareinterval(-0x5.B5DCAA821A628P-784, -0x1.48532232C10FDP-940)), bareinterval(-0x5.B5DCAA821A62CP-784, -0x1.48532232C10FDP-940))

    @test isequal_interval(sinh(bareinterval(0x3.8110D13AB0378P-720, 0x2.77422E18981C2P-44)), bareinterval(0x3.8110D13AB0378P-720, 0x2.77422E18981C4P-44))

    @test isequal_interval(sinh(bareinterval(-0x1.4AD562C0B5178P-380, +0x3.CEB34F40EA9BAP-792)), bareinterval(-0x1.4AD562C0B5179P-380, +0x3.CEB34F40EA9BCP-792))

    @test isequal_interval(sinh(bareinterval(-0x7.ED02EF56E40B0P-92, -0x1.8C80275A696B0P-552)), bareinterval(-0x7.ED02EF56E40B4P-92, -0x1.8C80275A696B0P-552))

    @test isequal_interval(sinh(bareinterval(-0x1.56FBE834FC822P-296, -0x3.66041558BACA8P-516)), bareinterval(-0x1.56FBE834FC823P-296, -0x3.66041558BACA8P-516))

    @test isequal_interval(sinh(bareinterval(-0x6.44524F6FCCF8CP-340, -0x5.3E8ED576A1334P-896)), bareinterval(-0x6.44524F6FCCF90P-340, -0x5.3E8ED576A1334P-896))

    @test isequal_interval(sinh(bareinterval(-0x8.92F5BEDA59C78P-268, +0x2.51B11C2EC76BAP-612)), bareinterval(-0x8.92F5BEDA59C80P-268, +0x2.51B11C2EC76BCP-612))

    @test isequal_interval(sinh(bareinterval(-0x4.785C46BDC2A50P-244, -0x1.BA5C062DE8F00P-432)), bareinterval(-0x4.785C46BDC2A54P-244, -0x1.BA5C062DE8F00P-432))

    @test isequal_interval(cosh(bareinterval(-0x3.53DC9496DE0A0P-160, -0xC.287E0E10EC1B8P-960)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.CF3637DCBCC9AP-452, -0x5.E4846462FF33CP-636)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.0362421843787P+0, -0x3.3D2CCEF698A5AP-972)), bareinterval(0x1.0000000000000P+0, 0x1.8F0A39674B193P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.494A24A7585D1P-380, +0x1.A0790A9E3013EP-604)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x2.B64BC5E999866P-368, -0xF.0633041110C28P-572)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x7.56F52F4FED854P-336, -0x4.F40A3934B3354P-416)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0xA.0E33C2BA95C88P-48, -0x1.1927CA3847669P-808)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.1BBBD6FE8B950P-208, -0x1.463A32DBA649DP-220)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(0x5.290FE84915530P-268, 0x1.8C9AF520C22C3P-96)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x2.E7332C654ABB6P-384, -0x1.4363967367F55P-932)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.55EBB1D70A46EP-592, +0x4.733FA51468530P-20)), bareinterval(0x1.0000000000000P+0, 0x1.0000000009E6FP+0))

    @test isequal_interval(cosh(bareinterval(-0x1.1B4B8388A3D92P-340, -0xD.51D4A3CE4C490P-600)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x4.21B73745BC4C0P-952, +0xD.E40D83923C3E0P-404)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.73D14FA7DA1CBP-504, +0x1.5B3AFEEB17A85P-28)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x3.3CD34997DF066P-320, -0x1.606C7BCE75819P-852)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0xC.5356A56E59748P-516, -0x1.33B9A95C55513P-772)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x5.FA887950A63CCP-588, -0x2.B707741B15478P-800)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x2.9476464AAE5BAP-548, +0x4.0734E17C026D4P-784)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0xF.A46AC05B0EAA8P-68, +0x1.EFA89F34F4188P-684)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x9.9488CB205AFA8P-124, -0x2.940180D1AA2AEP-556)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x3.F9D9FE5792CE0P-912, -0x3.F00FC8CE24ADCP-1016)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x7.D5A28EF80D6B0P-176, +0xC.5D2B8FFCB2AD8P-756)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x5.B5DCAA821A628P-784, -0x1.48532232C10FDP-940)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(0x3.8110D13AB0378P-720, 0x2.77422E18981C2P-44)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.4AD562C0B5178P-380, +0x3.CEB34F40EA9BAP-792)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x7.ED02EF56E40B0P-92, -0x1.8C80275A696B0P-552)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x1.56FBE834FC822P-296, -0x3.66041558BACA8P-516)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x6.44524F6FCCF8CP-340, -0x5.3E8ED576A1334P-896)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x8.92F5BEDA59C78P-268, +0x2.51B11C2EC76BAP-612)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(cosh(bareinterval(-0x4.785C46BDC2A50P-244, -0x1.BA5C062DE8F00P-432)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(tanh(bareinterval(0x1.7A77BFCCF5A9EP-232, 0x2.8457BC029986EP+112)), bareinterval(0x1.7A77BFCCF5A9DP-232, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x3.C5EC30FBB68C8P-508, 0x6.05C0BB1BCB730P-220)), bareinterval(0x3.C5EC30FBB68C6P-508, 0x6.05C0BB1BCB730P-220))

    @test isequal_interval(tanh(bareinterval(0xE.20FF41BD18058P-204, 0x2.9B09919BF9D9EP+272)), bareinterval(0xE.20FF41BD18050P-204, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x2.075DF98B2478CP-456, 0x1.1503444763FC5P-416)), bareinterval(0x2.075DF98B2478AP-456, 0x1.1503444763FC5P-416))

    @test isequal_interval(tanh(bareinterval(0x1.5444E676976F1P+252, 0x2.7C064F6929234P+292)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x1.3A01905E36F84P+0, 0x4.ECBC855871080P+332)), bareinterval(0xD.772335E624B98P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x2.404E44C49C644P-440, 0x7.32EDAB7F60A50P+236)), bareinterval(0x2.404E44C49C642P-440, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x1.63A15E999EB64P-344, 0x6.5263CF84EF388P+172)), bareinterval(0x1.63A15E999EB63P-344, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x6.941F470A70074P-756, 0x1.4171976A1CA54P-288)), bareinterval(0x6.941F470A70070P-756, 0x1.4171976A1CA54P-288))

    @test isequal_interval(tanh(bareinterval(0x7.78A1F475A306CP-564, 0x4.69BB1D34B9570P-76)), bareinterval(0x7.78A1F475A3068P-564, 0x4.69BB1D34B9570P-76))

    @test isequal_interval(tanh(bareinterval(0x1.BA04D452BBB35P+180, 0x1.F0D19ADCB5D74P+312)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x2.6ABC15579B2B2P-48, 0x2.E046DB554037CP+256)), bareinterval(0x2.6ABC15579B2B0P-48, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x8.297A99ED9ED08P+8, 0xE.33C49CF5B8790P+652)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x3.436DFE8F08194P+48, 0x2.A69A969772FDEP+688)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x6.3E590E626451CP-172, 0x1.7AAA15EBBD3F2P+8)), bareinterval(0x6.3E590E6264518P-172, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x6.ACFA418D8F92CP-544, 0x2.8F9204BC4041EP+988)), bareinterval(0x6.ACFA418D8F928P-544, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x2.BB570B356C6CAP-440, 0x2.B00450A48D586P-148)), bareinterval(0x2.BB570B356C6C8P-440, 0x2.B00450A48D586P-148))

    @test isequal_interval(tanh(bareinterval(0xC.41329461A0C30P-512, 0x1.9E7DDBBE00F75P+352)), bareinterval(0xC.41329461A0C28P-512, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x6.6978492A3064CP+188, 0xD.5E2045CEE9720P+236)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x7.DEA605DEC97CCP-316, 0x1.5BD629B25AA23P-236)), bareinterval(0x7.DEA605DEC97C8P-316, 0x1.5BD629B25AA23P-236))

    @test isequal_interval(tanh(bareinterval(0xD.05E9CCF66CF58P+424, 0xB.A944253373080P+564)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x6.65D7E0A247778P-56, 0x3.AE1DC13A652CAP+168)), bareinterval(0x6.65D7E0A247774P-56, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x5.2B55801231EC8P-344, 0xA.27B4555158148P-68)), bareinterval(0x5.2B55801231EC4P-344, 0xA.27B4555158148P-68))

    @test isequal_interval(tanh(bareinterval(0x6.36B661DCE2688P-236, 0x1.D68A6BA7E617FP+12)), bareinterval(0x6.36B661DCE2684P-236, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x1.EB0E1AB78F314P-480, 0x1.98EF0C6A8BD66P+132)), bareinterval(0x1.EB0E1AB78F313P-480, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x7.4CF193131FA64P-192, 0x1.C08152CC09416P+220)), bareinterval(0x7.4CF193131FA60P-192, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x1.7036C237D5B00P-672, 0x6.F70E0DA4D2BA0P-140)), bareinterval(0x1.7036C237D5AFFP-672, 0x6.F70E0DA4D2BA0P-140))

    @test isequal_interval(tanh(bareinterval(0x1.D283CF8F05665P+252, 0xB.24D19E00C8460P+324)), bareinterval(0xF.FFFFFFFFFFFF8P-4, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x3.A0EE84451C92CP-324, 0xF.CC937FA330E40P+648)), bareinterval(0x3.A0EE84451C92AP-324, 0x1.0000000000000P+0))

    @test isequal_interval(tanh(bareinterval(0x1.8BCA641025A83P-124, 0x5.F775993940188P-120)), bareinterval(0x1.8BCA641025A82P-124, 0x5.F775993940188P-120))

    @test isequal_interval(coth(bareinterval(0x5.9D7EEEA9B9EE0P-264, 0x3.F03D06503CAA2P+92)), bareinterval(0x1.0000000000000P+0, 0x2.D97240157D2C8P+260))

    @test isequal_interval(coth(bareinterval(-0x3.F03D06503CAA2P+92, -0x5.9D7EEEA9B9EE0P-264)), bareinterval(-0x2.D97240157D2C8P+260, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0xB.6600F238FE060P-520, 0x1.BB63631B595B0P-224)), bareinterval(0x9.3CEA8A8C76FC0P+220, 0x1.6758D7D180F69P+516))

    @test isequal_interval(coth(bareinterval(-0x1.BB63631B595B0P-224, -0xB.6600F238FE060P-520)), bareinterval(-0x1.6758D7D180F69P+516, -0x9.3CEA8A8C76FC0P+220))

    @test isequal_interval(coth(bareinterval(0x4.DC89ED0034C6CP-240, 0xD.A1D118A3891E8P+232)), bareinterval(0x1.0000000000000P+0, 0x3.4A8AB6B06359AP+236))

    @test isequal_interval(coth(bareinterval(-0xD.A1D118A3891E8P+232, -0x4.DC89ED0034C6CP-240)), bareinterval(-0x3.4A8AB6B06359AP+236, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x4.7F93F879A61A4P-492, 0x1.BDC6388153882P-452)), bareinterval(0x9.3041F45FA3D78P+448, 0x3.8E8E46D77A03EP+488))

    @test isequal_interval(coth(bareinterval(-0x1.BDC6388153882P-452, -0x4.7F93F879A61A4P-492)), bareinterval(-0x3.8E8E46D77A03EP+488, -0x9.3041F45FA3D78P+448))

    @test isequal_interval(coth(bareinterval(0xF.C7C928D9BB718P+192, 0x8.41A7954605A98P+224)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(coth(bareinterval(-0x8.41A7954605A98P+224, -0xF.C7C928D9BB718P+192)), bareinterval(-0x1.0000000000001P+0, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x3.F07C0B8005270P-44, 0x2.DD3C8580FCBE0P+276)), bareinterval(0x1.0000000000000P+0, 0x4.0FC1103283A70P+40))

    @test isequal_interval(coth(bareinterval(-0x2.DD3C8580FCBE0P+276, -0x3.F07C0B8005270P-44)), bareinterval(-0x4.0FC1103283A70P+40, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0xA.A97DED29FFF30P-480, 0x5.35EEA9C504860P+196)), bareinterval(0x1.0000000000000P+0, 0x1.802A4F4EFE3B2P+476))

    @test isequal_interval(coth(bareinterval(-0x5.35EEA9C504860P+196, -0xA.A97DED29FFF30P-480)), bareinterval(-0x1.802A4F4EFE3B2P+476, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x3.CF4B727451402P-376, 0x1.759F6C21DAF9AP+140)), bareinterval(0x1.0000000000000P+0, 0x4.33233873998C8P+372))

    @test isequal_interval(coth(bareinterval(-0x1.759F6C21DAF9AP+140, -0x3.CF4B727451402P-376)), bareinterval(-0x4.33233873998C8P+372, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x6.55376F4C1C50CP-772, 0x1.0120DD4EBC019P-328)), bareinterval(0xF.EE06735C6D910P+324, 0x2.86C88F09A2CBEP+768))

    @test isequal_interval(coth(bareinterval(-0x1.0120DD4EBC019P-328, -0x6.55376F4C1C50CP-772)), bareinterval(-0x2.86C88F09A2CBEP+768, -0xF.EE06735C6D910P+324))

    @test isequal_interval(coth(bareinterval(0x1.B63F1F7AED49EP-580, 0x2.245AF5BCB3356P-132)), bareinterval(0x7.7838528478BF8P+128, 0x9.58A984202B8E8P+576))

    @test isequal_interval(coth(bareinterval(-0x2.245AF5BCB3356P-132, -0x1.B63F1F7AED49EP-580)), bareinterval(-0x9.58A984202B8E8P+576, -0x7.7838528478BF8P+128))

    @test isequal_interval(coth(bareinterval(0x2.73B23CC8D8F76P+116, 0x1.F1E4F59403FC3P+276)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(coth(bareinterval(-0x1.F1E4F59403FC3P+276, -0x2.73B23CC8D8F76P+116)), bareinterval(-0x1.0000000000001P+0, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x2.5B4F5F71CA5FCP-100, 0x1.5C244CE1AC6B3P+204)), bareinterval(0x1.0000000000000P+0, 0x6.CA09D0DDC330CP+96))

    @test isequal_interval(coth(bareinterval(-0x1.5C244CE1AC6B3P+204, -0x2.5B4F5F71CA5FCP-100)), bareinterval(-0x6.CA09D0DDC330CP+96, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x1.4E7212DD5ABB9P+4, 0xD.9F35E61FDF7E8P+592)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(coth(bareinterval(-0xD.9F35E61FDF7E8P+592, -0x1.4E7212DD5ABB9P+4)), bareinterval(-0x1.0000000000001P+0, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x1.271B33491E515P+20, 0x2.B3031CF3AF4ECP+628)), bareinterval(0x1.0000000000000P+0, 0x1.0000000000001P+0))

    @test isequal_interval(coth(bareinterval(-0x2.B3031CF3AF4ECP+628, -0x1.271B33491E515P+20)), bareinterval(-0x1.0000000000001P+0, -0x1.0000000000000P+0))

    @test isequal_interval(coth(bareinterval(0x9.DB635E2FF52B0P-180, 0x2.AF04176524D06P-24)), bareinterval(0x5.F646A7779F114P+20, 0x1.9F8AFAA8DBFF9P+176))

    @test isequal_interval(coth(bareinterval(-0x2.AF04176524D06P-24, -0x9.DB635E2FF52B0P-180)), bareinterval(-0x1.9F8AFAA8DBFF9P+176, -0x5.F646A7779F114P+20))

    @test isequal_interval(asinh(bareinterval(0x1.7A77BFCCF5A9EP-232, 0x2.8457BC029986EP+112)), bareinterval(0x1.7A77BFCCF5A9DP-232, 0x4.F3FA9CD060658P+4))

    @test isequal_interval(asinh(bareinterval(0x3.C5EC30FBB68C8P-508, 0x6.05C0BB1BCB730P-220)), bareinterval(0x3.C5EC30FBB68C6P-508, 0x6.05C0BB1BCB730P-220))

    @test isequal_interval(asinh(bareinterval(0xE.20FF41BD18058P-204, 0x2.9B09919BF9D9EP+272)), bareinterval(0xE.20FF41BD18050P-204, 0xB.E2FD554E373E0P+4))

    @test isequal_interval(asinh(bareinterval(0x2.075DF98B2478CP-456, 0x1.1503444763FC5P-416)), bareinterval(0x2.075DF98B2478AP-456, 0x1.1503444763FC5P-416))

    @test isequal_interval(asinh(bareinterval(0x1.5444E676976F1P+252, 0x2.7C064F6929234P+292)), bareinterval(0xA.FA69A93525138P+4, 0xC.C008F1DBA8390P+4))

    @test isequal_interval(asinh(bareinterval(0x1.3A01905E36F84P+0, 0x4.ECBC855871080P+332)), bareinterval(0x1.086AFFAE230B6P+0, 0xE.8698B81E22AB0P+4))

    @test isequal_interval(asinh(bareinterval(0x2.404E44C49C644P-440, 0x7.32EDAB7F60A50P+236)), bareinterval(0x2.404E44C49C642P-440, 0xA.63FF3E7D6B730P+4))

    @test isequal_interval(asinh(bareinterval(0x1.63A15E999EB64P-344, 0x6.5263CF84EF388P+172)), bareinterval(0x1.63A15E999EB63P-344, 0x7.9C22B35B1CEE0P+4))

    @test isequal_interval(asinh(bareinterval(0x6.941F470A70074P-756, 0x1.4171976A1CA54P-288)), bareinterval(0x6.941F470A70070P-756, 0x1.4171976A1CA54P-288))

    @test isequal_interval(asinh(bareinterval(0x7.78A1F475A306CP-564, 0x4.69BB1D34B9570P-76)), bareinterval(0x7.78A1F475A3068P-564, 0x4.69BB1D34B9570P-76))

    @test isequal_interval(asinh(bareinterval(0x1.BA04D452BBB35P+180, 0x1.F0D19ADCB5D74P+312)), bareinterval(0x7.E017D1421AED4P+4, 0xD.99E3CCF428D70P+4))

    @test isequal_interval(asinh(bareinterval(0x2.6ABC15579B2B2P-48, 0x2.E046DB554037CP+256)), bareinterval(0x2.6ABC15579B2B0P-48, 0xB.331FC2BC20E70P+4))

    @test isequal_interval(asinh(bareinterval(0x6.3E590E626451CP-172, 0x1.7AAA15EBBD3F2P+8)), bareinterval(0x6.3E590E6264518P-172, 0x6.A13A85E654788P+0))

    @test isequal_interval(asinh(bareinterval(0x6.ACFA418D8F92CP-544, 0x2.8F9204BC4041EP+988)), bareinterval(0x6.ACFA418D8F928P-544, 0x2.AE767FF2330E0P+8))

    @test isequal_interval(asinh(bareinterval(0x2.BB570B356C6CAP-440, 0x2.B00450A48D586P-148)), bareinterval(0x2.BB570B356C6C8P-440, 0x2.B00450A48D586P-148))

    @test isequal_interval(asinh(bareinterval(0xC.41329461A0C30P-512, 0x1.9E7DDBBE00F75P+352)), bareinterval(0xC.41329461A0C28P-512, 0xF.529AF3B8107E0P+4))

    @test isequal_interval(asinh(bareinterval(0x6.6978492A3064CP+188, 0xD.5E2045CEE9720P+236)), bareinterval(0x8.4DCECB852E1E8P+4, 0xA.6DE648AA01A20P+4))

    @test isequal_interval(asinh(bareinterval(0x7.DEA605DEC97CCP-316, 0x1.5BD629B25AA23P-236)), bareinterval(0x7.DEA605DEC97C8P-316, 0x1.5BD629B25AA23P-236))

    @test isequal_interval(asinh(bareinterval(0x6.65D7E0A247778P-56, 0x3.AE1DC13A652CAP+168)), bareinterval(0x6.65D7E0A247774P-56, 0x7.671E008768830P+4))

    @test isequal_interval(asinh(bareinterval(0x5.2B55801231EC8P-344, 0xA.27B4555158148P-68)), bareinterval(0x5.2B55801231EC4P-344, 0xA.27B4555158148P-68))

    @test isequal_interval(asinh(bareinterval(0x6.36B661DCE2688P-236, 0x1.D68A6BA7E617FP+12)), bareinterval(0x6.36B661DCE2684P-236, 0x9.9E9F4F5A56088P+0))

    @test isequal_interval(asinh(bareinterval(0x1.EB0E1AB78F314P-480, 0x1.98EF0C6A8BD66P+132)), bareinterval(0x1.EB0E1AB78F313P-480, 0x5.CA82DEDB3D320P+4))

    @test isequal_interval(asinh(bareinterval(0x7.4CF193131FA64P-192, 0x1.C08152CC09416P+220)), bareinterval(0x7.4CF193131FA60P-192, 0x9.9BF0B87669850P+4))

    @test isequal_interval(asinh(bareinterval(0x1.7036C237D5B00P-672, 0x6.F70E0DA4D2BA0P-140)), bareinterval(0x1.7036C237D5AFFP-672, 0x6.F70E0DA4D2BA0P-140))

    @test isequal_interval(asinh(bareinterval(0x1.D283CF8F05665P+252, 0xB.24D19E00C8460P+324)), bareinterval(0xA.FF762A8B30EA0P+4, 0xE.3AF0836B2F5B0P+4))

    @test isequal_interval(asinh(bareinterval(0x1.8BCA641025A83P-124, 0x5.F775993940188P-120)), bareinterval(0x1.8BCA641025A82P-124, 0x5.F775993940188P-120))

    @test isequal_interval(acosh(bareinterval(0x5.AD89AD14DDC74P+272, 0x2.6EC5D31670A5EP+860)), bareinterval(0xB.EF73BF42C19D8P+4, 0x2.55B05064B6C2AP+8))

    @test isequal_interval(acosh(bareinterval(0x4.A457C35864940P+344, 0x2.3ADEFB54BC048P+444)), bareinterval(0xF.0ABC113DB1AF0P+4, 0x1.3540A29BC6B5EP+8))

    @test isequal_interval(acosh(bareinterval(0x6.941C8B9506D90P+56, 0x3.B11D8083AE958P+744)), bareinterval(0x2.964A9197BF832P+4, 0x2.05B3663FAE652P+8))

    @test isequal_interval(acosh(bareinterval(0x1.09A940A083EE3P+132, 0x1.047FD514ADF08P+384)), bareinterval(0x5.C39C22D7AA908P+4, 0x1.0AE10BDF7FE81P+8))

    @test isequal_interval(acosh(bareinterval(0x7.710740B71A0D4P+256, 0xF.C0798D156BFA0P+560)), bareinterval(0xB.42559B5CF34E8P+4, 0x1.879CCE87EE3A1P+8))

    @test isequal_interval(acosh(bareinterval(0x2.3721A01F70456P+564, 0x9.C62BBF31FD290P+728)), bareinterval(0x1.886C6F1DDDFF7P+8, 0x1.FB958311209BFP+8))

    @test isequal_interval(acosh(bareinterval(0x6.F06D452BDCEF0P+44, 0x2.4825931366BBCP+520)), bareinterval(0x2.120F95BD1F706P+4, 0x1.69F464545899AP+8))

    @test isequal_interval(acosh(bareinterval(0x5.D326D4B0883D8P+76, 0x1.77175C5A113ADP+528)), bareinterval(0x3.7226BF0157930P+4, 0x1.6F0E8DBF98710P+8))

    @test isequal_interval(acosh(bareinterval(0x1.05ADFE119D4C2P+296, 0x2.6BCDF50E05E34P+1020)), bareinterval(0xC.DE2FBE78FEC28P+4, 0x2.C49666459E1A4P+8))

    @test isequal_interval(acosh(bareinterval(0xA.7F5D255B81268P+408, 0x1.9D1EDDC132B36P+864)), bareinterval(0x1.1DD92C82827A1P+8, 0x2.580D06072BF20P+8))

    @test isequal_interval(acosh(bareinterval(0xC.FBE4E2C6D0A80P+484, 0x4.DF75BDC17C330P+868)), bareinterval(0x1.52BD770642386P+8, 0x2.5BEDB7E376E18P+8))

    @test isequal_interval(acosh(bareinterval(0xB.241032F9700A0P+380, 0x1.04A65B06B2920P+640)), bareinterval(0x1.0A7FEC190CCEEP+8, 0x1.BC5349B021815P+8))

    @test isequal_interval(acosh(bareinterval(0x5.F207EAF5F8BB4P+608, 0xA.BC87C6F90AEE0P+648)), bareinterval(0x1.A7E8C5069EA32P+8, 0x1.C439E5E8A511CP+8))

    @test isequal_interval(acosh(bareinterval(0x1.BCD62C46ADFD7P+16, 0xA.CD289B35ECD00P+564)), bareinterval(0xC.56062C0C41518P+0, 0x1.8A0201556D85AP+8))

    @test isequal_interval(acosh(bareinterval(0x6.534BBA40A0B44P+224, 0x1.8DE35856E91FBP+452)), bareinterval(0x9.DCD7CC0C7FFB8P+4, 0x1.3A6FC95911674P+8))

    @test isequal_interval(acosh(bareinterval(0x2.C4F59012F4E48P+508, 0x1.1854765A9A205P+688)), bareinterval(0x1.61D49DF92AB79P+8, 0x1.DDAB5081E5A0EP+8))

    @test isequal_interval(acosh(bareinterval(0x8.6F890522C18B0P+44, 0x3.F87592D71E06CP+220)), bareinterval(0x2.152F7D2DBF2BCP+4, 0x9.A907E7C701690P+4))

    @test isequal_interval(acosh(bareinterval(0x9.2A9035A578970P+124, 0x1.35EE42DCA8B75P+608)), bareinterval(0x5.8DBE2A7E96990P+4, 0x1.A6515B9ECF2F1P+8))

    @test isequal_interval(acosh(bareinterval(0x5.2641115F86D38P+204, 0x7.BE33D080E6584P+252)), bareinterval(0x8.FBBEB3B84C708P+4, 0xB.169BBE1313F68P+4))

    @test isequal_interval(acosh(bareinterval(0xA.8746F72A1BD90P+72, 0x5.6ABE29A315520P+872)), bareinterval(0x3.4F42DBFC0E4B4P+4, 0x2.5ECE9922C7894P+8))

    @test isequal_interval(acosh(bareinterval(0xB.D0973FF704000P+224, 0x2.2FD9ABBD09D34P+976)), bareinterval(0x9.E6D6EA0633070P+4, 0x2.A5FCBEDD15F2CP+8))

    @test isequal_interval(acosh(bareinterval(0xA.C15D51DB7D9F0P+536, 0x1.7207A70831D7AP+796)), bareinterval(0x1.76986E964982DP+8, 0x2.28CE847F69DCAP+8))

    @test isequal_interval(acosh(bareinterval(0x4.280BEC7911E7CP+180, 0x6.B4F11E86ECA38P+792)), bareinterval(0x7.EE261446DD5F8P+4, 0x2.27919F48F2C20P+8))

    @test isequal_interval(acosh(bareinterval(0x3.4B22674960B0EP+468, 0xA.505A061DF4CD8P+808)), bareinterval(0x1.4647297977E4EP+8, 0x2.3316ED57009D4P+8))

    @test isequal_interval(acosh(bareinterval(0x2.383FC27D5E4E4P+756, 0x5.88E9C96565E54P+920)), bareinterval(0x2.0D82822002358P+8, 0x2.801980299550CP+8))

    @test isequal_interval(acosh(bareinterval(0x1.20E762C8AAB55P+72, 0x1.DBB7B8FE35847P+960)), bareinterval(0x3.2B87D37C9EAFAP+4, 0x2.9ABBED2A77E62P+8))

    @test isequal_interval(acosh(bareinterval(0x1.1265074E9E3DFP+792, 0x2.229B285A709C0P+920)), bareinterval(0x2.25BC2FC876EBCP+8, 0x2.7F25A89FE16E6P+8))

    @test isequal_interval(acosh(bareinterval(0x1.054DCDEF21349P+436, 0x1.618994D07D9A7P+636)), bareinterval(0x1.2EED02D819A15P+8, 0x1.B9DB8970CC5ECP+8))

    @test isequal_interval(acosh(bareinterval(0x4.5BE0D9A7FF0CCP+460, 0x2.6F2C55F16354AP+568)), bareinterval(0x1.4103588C86AB6P+8, 0x1.8B4A572E180D4P+8))

    @test isequal_interval(acosh(bareinterval(0x9.BD8B9A7FB6630P+80, 0x2.AD5F8458C8722P+768)), bareinterval(0x3.A6BD416FCCF70P+4, 0x2.1603D4EDCB36AP+8))

    @test isequal_interval(atanh(bareinterval(-0x3.11A309475E762P-164, -0xC.3784302E15500P-680)), bareinterval(-0x3.11A309475E764P-164, -0xC.3784302E15500P-680))

    @test isequal_interval(atanh(bareinterval(-0x5.7DD17A4248D38P-280, -0x2.898FC0F386F74P-640)), bareinterval(-0x5.7DD17A4248D3CP-280, -0x2.898FC0F386F74P-640))

    @test isequal_interval(atanh(bareinterval(-0xE.D83DCD7F564A0P-296, -0x1.62F61FBA0F40FP-764)), bareinterval(-0xE.D83DCD7F564A8P-296, -0x1.62F61FBA0F40FP-764))

    @test isequal_interval(atanh(bareinterval(-0x1.67712A1E64C2CP-944, -0x1.C0102C4D258EFP-976)), bareinterval(-0x1.67712A1E64C2DP-944, -0x1.C0102C4D258EFP-976))

    @test isequal_interval(atanh(bareinterval(0x2.E3D991AE84668P-728, 0x1.92C3C728CCF4AP-612)), bareinterval(0x2.E3D991AE84668P-728, 0x1.92C3C728CCF4BP-612))

    @test isequal_interval(atanh(bareinterval(-0x1.BCD3FEB3B0175P-640, +0x1.BEBE69E3BF3C2P-536)), bareinterval(-0x1.BCD3FEB3B0176P-640, +0x1.BEBE69E3BF3C3P-536))

    @test isequal_interval(atanh(bareinterval(-0x1.2469575189327P-372, -0x7.51C0C39F58A4CP-1008)), bareinterval(-0x1.2469575189328P-372, -0x7.51C0C39F58A4CP-1008))

    @test isequal_interval(atanh(bareinterval(-0x1.C4D163A6CCCD9P-336, -0x1.3BEE6DAB70397P-796)), bareinterval(-0x1.C4D163A6CCCDAP-336, -0x1.3BEE6DAB70397P-796))

    @test isequal_interval(atanh(bareinterval(-0x2.0FAE5DE90C98CP-896, -0x2.2079777EC2418P-976)), bareinterval(-0x2.0FAE5DE90C98EP-896, -0x2.2079777EC2418P-976))

    @test isequal_interval(atanh(bareinterval(-0x1.08C248C37E53BP-816, +0x2.8C9F04EE5DE84P-948)), bareinterval(-0x1.08C248C37E53CP-816, +0x2.8C9F04EE5DE86P-948))

    @test isequal_interval(atanh(bareinterval(-0x2.0002542B01474P-228, +0x2.4D59F217BF74CP-796)), bareinterval(-0x2.0002542B01476P-228, +0x2.4D59F217BF74EP-796))

    @test isequal_interval(atanh(bareinterval(0xD.D4033889729A0P-844, 0x7.44451BF919D78P-556)), bareinterval(0xD.D4033889729A0P-844, 0x7.44451BF919D7CP-556))

    @test isequal_interval(atanh(bareinterval(-0x2.08918B016995CP-64, +0x3.3FC26450C6E4AP-268)), bareinterval(-0x2.08918B016995EP-64, +0x3.3FC26450C6E4CP-268))

    @test isequal_interval(atanh(bareinterval(-0x2.66C95BD8D7716P-388, +0x1.7E16B310F878AP-232)), bareinterval(-0x2.66C95BD8D7718P-388, +0x1.7E16B310F878BP-232))

    @test isequal_interval(atanh(bareinterval(-0x3.D9C66BD30B774P-256, -0x4.A8C30F678CB68P-456)), bareinterval(-0x3.D9C66BD30B776P-256, -0x4.A8C30F678CB68P-456))

    @test isequal_interval(atanh(bareinterval(-0x1.AA045CCB15AEDP-804, +0xD.450C473265610P-24)), bareinterval(-0x1.AA045CCB15AEEP-804, +0xD.450C4732686C0P-24))

    @test isequal_interval(atanh(bareinterval(-0x2.23ADFA571FC3CP-344, -0x1.30D1074DC059EP-868)), bareinterval(-0x2.23ADFA571FC3EP-344, -0x1.30D1074DC059EP-868))

    @test isequal_interval(atanh(bareinterval(-0x3.DFBC1A4BF3888P-68, -0x4.A89E39B247C84P-840)), bareinterval(-0x3.DFBC1A4BF388AP-68, -0x4.A89E39B247C84P-840))

    @test isequal_interval(atanh(bareinterval(0x9.583064525D370P-496, 0x2.C67652F06A55EP-408)), bareinterval(0x9.583064525D370P-496, 0x2.C67652F06A560P-408))

    @test isequal_interval(atanh(bareinterval(-0x3.38BF880EC3082P-304, -0x7.7B19877E536ACP-512)), bareinterval(-0x3.38BF880EC3084P-304, -0x7.7B19877E536ACP-512))

    @test isequal_interval(atanh(bareinterval(-0x2.ADBF037238702P-44, +0x1.98DC940C3AE1EP-564)), bareinterval(-0x2.ADBF037238704P-44, +0x1.98DC940C3AE1FP-564))

    @test isequal_interval(atanh(bareinterval(-0x4.E4A79C48B3A58P-328, +0xA.28B02E59D39D8P-856)), bareinterval(-0x4.E4A79C48B3A5CP-328, +0xA.28B02E59D39E0P-856))

    @test isequal_interval(atanh(bareinterval(-0x6.80D3E87B911D8P-232, -0x2.3DF54212C46E4P-520)), bareinterval(-0x6.80D3E87B911DCP-232, -0x2.3DF54212C46E4P-520))

    @test isequal_interval(atanh(bareinterval(-0x1.4E54C309C46F8P-480, +0x9.47E982AC83F98P-688)), bareinterval(-0x1.4E54C309C46F9P-480, +0x9.47E982AC83FA0P-688))

    @test isequal_interval(atanh(bareinterval(-0x2.276202227A6DEP-808, +0x1.C53E9BA64FADFP-768)), bareinterval(-0x2.276202227A6E0P-808, +0x1.C53E9BA64FAE0P-768))

    @test isequal_interval(atanh(bareinterval(-0x4.8E4B4D7BA6DD0P-212, -0x1.4B35284C1064BP-548)), bareinterval(-0x4.8E4B4D7BA6DD4P-212, -0x1.4B35284C1064BP-548))

    @test isequal_interval(atanh(bareinterval(-0x3.5C52B8D9FF582P-248, -0x2.AF868D652B866P-912)), bareinterval(-0x3.5C52B8D9FF584P-248, -0x2.AF868D652B866P-912))

    @test isequal_interval(atanh(bareinterval(0x1.6938CC5EE183AP-692, 0xB.F7A583AC38168P-664)), bareinterval(0x1.6938CC5EE183AP-692, 0xB.F7A583AC38170P-664))

    @test isequal_interval(atanh(bareinterval(-0x3.68B35F23B2506P-560, +0x9.F9C9246D05138P-304)), bareinterval(-0x3.68B35F23B2508P-560, +0x9.F9C9246D05140P-304))

    @test isequal_interval(atanh(bareinterval(-0xA.BDE70B6850EA0P-516, +0x2.BB76D5BF703FAP-1020)), bareinterval(-0xA.BDE70B6850EA8P-516, +0x2.BB76D5BF703FCP-1020))

    @test isequal_interval(acoth(bareinterval(0x5.AD89AD14DDC78P+272, 0x2.6EC5D31670A60P+860)), bareinterval(0x6.93B8C1A4ADA4CP-864, 0x2.D165505974CDCP-276))

    @test isequal_interval(acoth(bareinterval(-0x2.6EC5D31670A60P+860, -0x5.AD89AD14DDC78P+272)), bareinterval(-0x2.D165505974CDCP-276, -0x6.93B8C1A4ADA4CP-864))

    @test isequal_interval(acoth(bareinterval(0x4.A457C35864944P+344, 0x2.3ADEFB54BC04AP+444)), bareinterval(0x7.2CCCD8F3E4D84P-448, 0x3.726295CD6E028P-348))

    @test isequal_interval(acoth(bareinterval(-0x2.3ADEFB54BC04AP+444, -0x4.A457C35864944P+344)), bareinterval(-0x3.726295CD6E028P-348, -0x7.2CCCD8F3E4D84P-448))

    @test isequal_interval(acoth(bareinterval(0x6.941C8B9506D98P+56, 0x3.B11D8083AE95CP+744)), bareinterval(0x4.55780C09BB248P-748, 0x2.6EA0EC606D92CP-60))

    @test isequal_interval(acoth(bareinterval(-0x3.B11D8083AE95CP+744, -0x6.941C8B9506D98P+56)), bareinterval(-0x2.6EA0EC606D92CP-60, -0x4.55780C09BB248P-748))

    @test isequal_interval(acoth(bareinterval(0x1.09A940A083EE4P+132, 0x1.047FD514ADF09P+384)), bareinterval(0xF.B940FE60125C0P-388, 0xF.6B0B0DCA2D740P-136))

    @test isequal_interval(acoth(bareinterval(-0x1.047FD514ADF09P+384, -0x1.09A940A083EE4P+132)), bareinterval(-0xF.6B0B0DCA2D740P-136, -0xF.B940FE60125C0P-388))

    @test isequal_interval(acoth(bareinterval(0x7.710740B71A0DCP+256, 0xF.C0798D156BFB0P+560)), bareinterval(0x1.04086A3447A55P-564, 0x2.266CE7A905524P-260))

    @test isequal_interval(acoth(bareinterval(-0xF.C0798D156BFB0P+560, -0x7.710740B71A0DCP+256)), bareinterval(-0x2.266CE7A905524P-260, -0x1.04086A3447A55P-564))

    @test isequal_interval(acoth(bareinterval(0x2.3721A01F70458P+564, 0x9.C62BBF31FD298P+728)), bareinterval(0x1.A3110641EF7BCP-732, 0x7.38E97DB7ABD94P-568))

    @test isequal_interval(acoth(bareinterval(-0x9.C62BBF31FD298P+728, -0x2.3721A01F70458P+564)), bareinterval(-0x7.38E97DB7ABD94P-568, -0x1.A3110641EF7BCP-732))

    @test isequal_interval(acoth(bareinterval(0x6.F06D452BDCEF8P+44, 0x2.4825931366BBEP+520)), bareinterval(0x7.030E427A5F700P-524, 0x2.4E45C5E18EA0EP-48))

    @test isequal_interval(acoth(bareinterval(-0x2.4825931366BBEP+520, -0x6.F06D452BDCEF8P+44)), bareinterval(-0x2.4E45C5E18EA0EP-48, -0x7.030E427A5F700P-524))

    @test isequal_interval(acoth(bareinterval(0x5.D326D4B0883DCP+76, 0x1.77175C5A113AEP+528)), bareinterval(0xA.EB85BC1375C18P-532, 0x2.BF32E14DB1D26P-80))

    @test isequal_interval(acoth(bareinterval(-0x1.77175C5A113AEP+528, -0x5.D326D4B0883DCP+76)), bareinterval(-0x2.BF32E14DB1D26P-80, -0xA.EB85BC1375C18P-532))

    @test isequal_interval(acoth(bareinterval(0x1.05ADFE119D4C3P+296, 0x2.6BCDF50E05E36P+1020)), bareinterval(0x6.9BC8F6BE69A84P-1024, 0xF.A7190DED61120P-300))

    @test isequal_interval(acoth(bareinterval(-0x2.6BCDF50E05E36P+1020, -0x1.05ADFE119D4C3P+296)), bareinterval(-0xF.A7190DED61120P-300, -0x6.9BC8F6BE69A84P-1024))

    @test isequal_interval(acoth(bareinterval(0xA.7F5D255B81270P+408, 0x1.9D1EDDC132B38P+864)), bareinterval(0x9.EA2F16D4B51A8P-868, 0x1.8630054C790C6P-412))

    @test isequal_interval(acoth(bareinterval(-0x1.9D1EDDC132B38P+864, -0xA.7F5D255B81270P+408)), bareinterval(-0x1.8630054C790C6P-412, -0x9.EA2F16D4B51A8P-868))

    @test isequal_interval(acoth(bareinterval(0xC.FBE4E2C6D0A90P+484, 0x4.DF75BDC17C334P+868)), bareinterval(0x3.4891A2770DF7CP-872, 0x1.3B7754395DD7FP-488))

    @test isequal_interval(acoth(bareinterval(-0x4.DF75BDC17C334P+868, -0xC.FBE4E2C6D0A90P+484)), bareinterval(-0x1.3B7754395DD7FP-488, -0x3.4891A2770DF7CP-872))

    @test isequal_interval(acoth(bareinterval(0xB.241032F9700A8P+380, 0x1.04A65B06B2921P+640)), bareinterval(0xF.B6EE12E44E478P-644, 0x1.6FA7BD9AAC5D2P-384))

    @test isequal_interval(acoth(bareinterval(-0x1.04A65B06B2921P+640, -0xB.241032F9700A8P+380)), bareinterval(-0x1.6FA7BD9AAC5D2P-384, -0xF.B6EE12E44E478P-644))

    @test isequal_interval(acoth(bareinterval(0x5.F207EAF5F8BB8P+608, 0xA.BC87C6F90AEE8P+648)), bareinterval(0x1.7D8116060016CP-652, 0x2.B0EE9FA61C0DAP-612))

    @test isequal_interval(acoth(bareinterval(-0xA.BC87C6F90AEE8P+648, -0x5.F207EAF5F8BB8P+608)), bareinterval(-0x2.B0EE9FA61C0DAP-612, -0x1.7D8116060016CP-652))

    @test isequal_interval(acoth(bareinterval(0x1.BCD62C46ADFD9P+16, 0xA.CD289B35ECD08P+564)), bareinterval(0x1.7B35C74EEC020P-568, 0x9.35374E76B1BE8P-20))

    @test isequal_interval(acoth(bareinterval(-0xA.CD289B35ECD08P+564, -0x1.BCD62C46ADFD9P+16)), bareinterval(-0x9.35374E76B1BE8P-20, -0x1.7B35C74EEC020P-568))

    @test isequal_interval(acoth(bareinterval(0x6.534BBA40A0B4CP+224, 0x1.8DE35856E91FDP+452)), bareinterval(0xA.4B5AAEDFCE6A8P-456, 0x2.878CF52E5FBF8P-228))

    @test isequal_interval(acoth(bareinterval(-0x1.8DE35856E91FDP+452, -0x6.534BBA40A0B4CP+224)), bareinterval(-0x2.878CF52E5FBF8P-228, -0xA.4B5AAEDFCE6A8P-456))

    @test isequal_interval(expm1(bareinterval(-0x1.16CC0DF1540F5P+112, -0x1.B3E4076622F04P-232)), bareinterval(-0x1.0000000000000P+0, -0x1.B3E4076622F03P-232))

    @test isequal_interval(expm1(bareinterval(-0x2.42042B9A88438P-220, -0x2.A213429DB0508P-508)), bareinterval(-0x2.42042B9A88438P-220, -0x2.A213429DB0506P-508))

    @test isequal_interval(expm1(bareinterval(-0x2.0E2E40B15D814P+272, -0x1.5D74CFDA6B292P-200)), bareinterval(-0x1.0000000000000P+0, -0x1.5D74CFDA6B291P-200))

    @test isequal_interval(expm1(bareinterval(-0x2.0EA791886F712P-416, -0x3.FE66A8D1A3472P-456)), bareinterval(-0x2.0EA791886F712P-416, -0x3.FE66A8D1A3470P-456))

    @test isequal_interval(expm1(bareinterval(-0x8.80EEFDF700148P+332, -0x1.C4E85E50A626DP+0)), bareinterval(-0x1.0000000000000P+0, -0xD.45BCBA84EE268P-4))

    @test isequal_interval(expm1(bareinterval(-0x6.CA83546563A5CP+236, -0x4.F0F28370909FCP-440)), bareinterval(-0x1.0000000000000P+0, -0x4.F0F28370909F8P-440))

    @test isequal_interval(expm1(bareinterval(-0x4.E60572D4FCFD0P+172, -0x1.EB095183538C8P-344)), bareinterval(-0x1.0000000000000P+0, -0x1.EB095183538C7P-344))

    @test isequal_interval(expm1(bareinterval(-0x2.7ED8954764B12P-288, -0x8.71DC22117BE90P-756)), bareinterval(-0x2.7ED8954764B12P-288, -0x8.71DC22117BE88P-756))

    @test isequal_interval(expm1(bareinterval(-0xD.CF39B8DD68B98P-76, -0x8.0205C5B1357B0P-564)), bareinterval(-0xD.CF39B8DD68B98P-76, -0x8.0205C5B1357A8P-564))

    @test isequal_interval(expm1(bareinterval(-0x4.AF296DD37FD74P+256, -0x5.CBE2BD423B02CP-48)), bareinterval(-0x1.0000000000000P+0, -0x5.CBE2BD423AF1CP-48))

    @test isequal_interval(expm1(bareinterval(-0x1.1FBA2D1252D2BP+656, -0x2.4B7A4095C91B4P+8)), bareinterval(-0x1.0000000000000P+0, -0xF.FFFFFFFFFFFF8P-4))

    @test isequal_interval(expm1(bareinterval(-0x1.44F2134E1901EP+8, -0x2.581DAD9AFE6DCP-172)), bareinterval(-0x1.0000000000000P+0, -0x2.581DAD9AFE6DAP-172))

    @test isequal_interval(expm1(bareinterval(-0x2.9529E333F2ABAP+988, -0x7.19390F862F49CP-544)), bareinterval(-0x1.0000000000000P+0, -0x7.19390F862F498P-544))

    @test isequal_interval(expm1(bareinterval(-0x1.58391FD92C387P-148, -0x4.0C12426A57194P-440)), bareinterval(-0x1.58391FD92C387P-148, -0x4.0C12426A57190P-440))

    @test isequal_interval(expm1(bareinterval(-0xB.FADC4FB83E140P+348, -0xF.13E388B2165F0P-512)), bareinterval(-0x1.0000000000000P+0, -0xF.13E388B2165E8P-512))

    @test isequal_interval(expm1(bareinterval(-0x8.86826CE1AB700P-240, -0x4.FEA8D3A3ED018P-316)), bareinterval(-0x8.86826CE1AB700P-240, -0x4.FEA8D3A3ED014P-316))

    @test isequal_interval(expm1(bareinterval(0x1.0000000000000P+0, 0x2.0000000000000P+0)), bareinterval(0x1.B7E151628AED2P+0, 0x6.63992E35376B8P+0))

    @test isequal_interval(expm1(bareinterval(-0x1.0000000000000P+0, +0x2.0000000000000P+0)), bareinterval(-0xA.1D2A7274C4328P-4, +0x6.63992E35376B8P+0))

    @test isequal_interval(expm1(bareinterval(-0x5.0000000000000P+0, -0x3.0000000000000P+0)), bareinterval(-0xF.E466C01FF2AD0P-4, -0xF.341279998A7A8P-4))

    @test isequal_interval(expm1(bareinterval(-0x2.0000000000000P+0, +0x9.9999999999998P-4)), bareinterval(-0xD.D5AAAB880FC70P-4, +0xD.27660B11A9EF8P-4))

    @test isequal_interval(expm1(bareinterval(0x4.0000000000000P-1076, 0x4.4444400000000P-1056)), bareinterval(0x4.0000000000000P-1076, 0x4.4444800000000P-1056))

    @test isequal_interval(expm1(bareinterval(0x4.4440000000000P-1064, 0x1.0000000000000P+0)), bareinterval(0x4.4440000000000P-1064, 0x1.B7E151628AED3P+0))

    @test isequal_interval(expm1(bareinterval(-0x4.4444000000000P-1060, +0x4.4444000000000P-1060)), bareinterval(-0x4.4444000000000P-1060, +0x4.4448000000000P-1060))

    @test isequal_interval(expm1(bareinterval(-0x4.4400000000000P-1068, +0x1.FFF0000000000P+0)), bareinterval(-0x4.4400000000000P-1068, +0x6.6322F8540CFB4P+0))

    @test isequal_interval(expm1(bareinterval(-0x1.FFFF000000000P+0, -0x8.8888880000000P-1052)), bareinterval(-0xD.D5A88131A6240P-4, -0x8.8888840000000P-1052))

    @test isequal_interval(expm1(bareinterval(-0x1.FFFFFFF000000P+0, +0x8.CD11555400000P-1044)), bareinterval(-0xD.D5AAAB656A718P-4, +0x8.CD11555800000P-1044))

    @test isequal_interval(log1p(bareinterval(0xC.4B4A6EB6B3AF0P-264, 0xA.DD2C4C1BE4B30P+92)), bareinterval(0xC.4B4A6EB6B3AE8P-264, 0x4.227AD8183FB70P+4))

    @test isequal_interval(log1p(bareinterval(0x2.6213E21B14894P-516, 0x6.6606F0995E5F4P-224)), bareinterval(0x2.6213E21B14892P-516, 0x6.6606F0995E5F4P-224))

    @test isequal_interval(log1p(bareinterval(0x9.0FF2CAA1B3048P-240, 0x1.95F14B9BA7449P+236)), bareinterval(0x9.0FF2CAA1B3040P-240, 0xA.40B346F454218P+4))

    @test isequal_interval(log1p(bareinterval(0x8.E2ADA8DFBE938P-492, 0x3.67CB3BE0BB146P-452)), bareinterval(0x8.E2ADA8DFBE930P-492, 0x3.67CB3BE0BB146P-452))

    @test isequal_interval(log1p(bareinterval(0x1.394270BBCBA7EP+196, 0x8.4976F0BF45A40P+224)), bareinterval(0x8.80F0717A1DC40P+4, 0x9.D6130F01F8B78P+4))

    @test isequal_interval(log1p(bareinterval(0x6.A000A12839A50P-44, 0x3.86DC59439415AP+276)), bareinterval(0x6.A000A1283845CP-44, 0xC.091AAD1207058P+4))

    @test isequal_interval(log1p(bareinterval(0x1.3C84E4F9C80CEP-476, 0x9.1E9439C3B4358P+196)), bareinterval(0x1.3C84E4F9C80CDP-476, 0x8.A1137BDE55CF8P+4))

    @test isequal_interval(log1p(bareinterval(0x8.41D2DB6D93548P-376, 0x2.EDCF4A7919034P+140)), bareinterval(0x8.41D2DB6D93540P-376, 0x6.21D80D9193AB8P+4))

    @test isequal_interval(log1p(bareinterval(0x1.2C18FEEBCAEAEP-768, 0x1.C369E759DF5E3P-328)), bareinterval(0x1.2C18FEEBCAEADP-768, 0x1.C369E759DF5E3P-328))

    @test isequal_interval(log1p(bareinterval(0x4.D94E91619D3F0P-580, 0x2.9F6CAF6B5513EP-132)), bareinterval(0x4.D94E91619D3ECP-580, 0x2.9F6CAF6B5513EP-132))

    @test isequal_interval(log1p(bareinterval(0x2.9CD12C1D0AAC4P+116, 0x3.BF7E0E52DC1AAP+276)), bareinterval(0x5.15D8B410E0A5CP+4, 0xC.0A13DC536CD58P+4))

    @test isequal_interval(log1p(bareinterval(0x3.36DE5C55594EEP-100, 0x1.D0460177B1553P+204)), bareinterval(0x3.36DE5C55594ECP-100, 0x8.DFF506FE0D9F8P+4))

    @test isequal_interval(log1p(bareinterval(0x4.BD4031736F7A8P+4, 0xF.A10BB3C91C7B0P+592)), bareinterval(0x4.5771391F308D8P+0, 0x1.9D179EA5204D0P+8))

    @test isequal_interval(log1p(bareinterval(0x2.8E258DB3C44F8P+20, 0x3.1A4EDE719A4C0P+628)), bareinterval(0xE.CD14C501247C0P+0, 0x1.B46DC0D02B874P+8))

    @test isequal_interval(log1p(bareinterval(0x2.33950F38F830EP-176, 0x5.BE0388619B018P-24)), bareinterval(0x2.33950F38F830CP-176, 0x5.BE0377E504F78P-24))

    @test isequal_interval(log1p(bareinterval(0x3.24F03DF33568CP-560, 0xE.67255823421E8P+920)), bareinterval(0x3.24F03DF33568AP-560, 0x2.805CE2DC91036P+8))

    @test isequal_interval(log1p(bareinterval(0x2.D572639DC5FA8P-468, 0x1.95CF42AA171CDP-160)), bareinterval(0x2.D572639DC5FA6P-468, 0x1.95CF42AA171CDP-160))

    @test isequal_interval(log1p(bareinterval(0x4.705A028302DB0P-532, 0x2.E57341C14970CP+324)), bareinterval(0x4.705A028302DACP-532, 0xE.1A4A3523F2658P+4))

    @test isequal_interval(log1p(bareinterval(0x4.DBA1D21D6F308P+144, 0x3.667988C57865AP+196)), bareinterval(0x6.564D09AD1D214P+4, 0x8.914A9531FD118P+4))

    @test isequal_interval(log1p(bareinterval(0x4.9FA5A1E4DF740P-328, 0x1.11B85141B78F6P-240)), bareinterval(0x4.9FA5A1E4DF73CP-328, 0x1.11B85141B78F6P-240))

    @test isequal_interval(log1p(bareinterval(0xA.0CDE9DC015B08P+360, 0xF.99D84F862AC58P+524)), bareinterval(0xF.BD7308ED73FF0P+4, 0x1.6DF4DA39DC5DDP+8))

    @test isequal_interval(log1p(bareinterval(0x6.88441038D56B8P-108, 0x3.3D65C09938132P+136)), bareinterval(0x6.88441038D56B4P-108, 0x5.F718BBF0CE2F8P+4))

    @test isequal_interval(log1p(bareinterval(0x7.1761CAB055134P-356, 0x1.92EFD09488689P-76)), bareinterval(0x7.1761CAB055130P-356, 0x1.92EFD09488689P-76))

    @test isequal_interval(log1p(bareinterval(0x6.2085E427413C8P-252, 0xB.8CDD3B024EA10P-36)), bareinterval(0x6.2085E427413C4P-252, 0xB.8CDD3AFE235D0P-36))

    @test isequal_interval(log1p(bareinterval(0xB.F5F1C0FA33978P-504, 0x4.924DD8D50B1CCP+72)), bareinterval(0xB.F5F1C0FA33970P-504, 0x3.36D2B121508A8P+4))

    @test isequal_interval(log1p(bareinterval(0xB.BC7E37EB2D388P-216, 0x1.CFE27BB53DEBBP+192)), bareinterval(0xB.BC7E37EB2D380P-216, 0x8.5ADC069F618A8P+4))

    @test isequal_interval(log1p(bareinterval(0x1.E139DD116F868P-688, 0xD.2545346D68FD0P-148)), bareinterval(0x1.E139DD116F867P-688, 0xD.2545346D68FD0P-148))

    @test isequal_interval(log1p(bareinterval(0x2.E0C8E64A890ACP+192, 0x2.6A898D2CAA9A4P+260)), bareinterval(0x8.6243148F46208P+4, 0xB.519B6E544F898P+4))

    @test isequal_interval(log1p(bareinterval(0x5.9C4642ED78BC8P-340, 0x4.631BD2232F0C0P+588)), bareinterval(0x5.9C4642ED78BC4P-340, 0x1.990C99B6124FEP+8))

    @test isequal_interval(log1p(bareinterval(0xF.C05EA810DFE88P-180, 0xA.05884FBED5F48P-152)), bareinterval(0xF.C05EA810DFE80P-180, 0xA.05884FBED5F48P-152))

    @test isequal_interval(sqrt(bareinterval(0xC.4B4A6EB6B3AF0P-264, 0xA.DD2C4C1BE4B30P+92)), bareinterval(0x3.819C8C44FCAE8P-132, 0xD.2F2830FA93228P+44))

    @test isequal_interval(sqrt(bareinterval(0x2.6213E21B14894P-516, 0x6.6606F0995E5F4P-224)), bareinterval(0x6.2CC8B5D1B7648P-260, 0x2.878F8E10E2752P-112))

    @test isequal_interval(sqrt(bareinterval(0x9.0FF2CAA1B3048P-240, 0x1.95F14B9BA7449P+236)), bareinterval(0x3.02A74AB0BBF36P-120, 0x5.0979194446A10P+116))

    @test isequal_interval(sqrt(bareinterval(0x8.E2ADA8DFBE938P-492, 0x3.67CB3BE0BB146P-452)), bareinterval(0xB.EC63BFE10BCC8P-248, 0x7.61AC89CF17804P-228))

    @test isequal_interval(sqrt(bareinterval(0x1.394270BBCBA7EP+196, 0x8.4976F0BF45A40P+224)), bareinterval(0x4.6CBEB2D8F6718P+96, 0x2.E0F32319AC30AP+112))

    @test isequal_interval(sqrt(bareinterval(0x6.A000A12839A50P-44, 0x3.86DC59439415AP+276)), bareinterval(0xA.4BAEE7F482900P-24, 0x7.830C8D5A5F3D8P+136))

    @test isequal_interval(sqrt(bareinterval(0x1.3C84E4F9C80CEP-476, 0x9.1E9439C3B4358P+196)), bareinterval(0x4.729F7C344CE30P-240, 0xC.14519D6697FF0P+96))

    @test isequal_interval(sqrt(bareinterval(0x8.41D2DB6D93548P-376, 0x2.EDCF4A7919034P+140)), bareinterval(0x2.DF9F14A64C77AP-188, 0x6.D87D667089BD8P+68))

    @test isequal_interval(sqrt(bareinterval(0x1.2C18FEEBCAEAEP-768, 0x1.C369E759DF5E3P-328)), bareinterval(0x1.152C585EDDB6AP-384, 0x1.53F1A81CAA4A0P-164))

    @test isequal_interval(sqrt(bareinterval(0x4.D94E91619D3F0P-580, 0x2.9F6CAF6B5513EP-132)), bareinterval(0x8.CEDC2135E05E8P-292, 0x6.7A5BEF2579C34P-68))

    @test isequal_interval(sqrt(bareinterval(0x2.9CD12C1D0AAC4P+116, 0x3.BF7E0E52DC1AAP+276)), bareinterval(0x6.7722C88D985D8P+56, 0x7.BE7173245A668P+136))

    @test isequal_interval(sqrt(bareinterval(0x3.36DE5C55594EEP-100, 0x1.D0460177B1553P+204)), bareinterval(0x7.2BE248A308D24P-52, 0x5.630224B50BCF8P+100))

    @test isequal_interval(sqrt(bareinterval(0x4.BD4031736F7A8P+4, 0xF.A10BB3C91C7B0P+592)), bareinterval(0x8.B53B61217B4F8P+0, 0x3.F40FA54A699E2P+296))

    @test isequal_interval(sqrt(bareinterval(0x2.8E258DB3C44F8P+20, 0x3.1A4EDE719A4C0P+628)), bareinterval(0x6.64E1F64817930P+8, 0x7.0BBE006E8934CP+312))

    @test isequal_interval(sqrt(bareinterval(0x2.33950F38F830EP-176, 0x5.BE0388619B018P-24)), bareinterval(0x1.7BD69462CDAD2P-88, 0x2.6573BFB248EF0P-12))

    @test isequal_interval(sqrt(bareinterval(0x3.24F03DF33568CP-560, 0xE.67255823421E8P+920)), bareinterval(0x1.C5F168118C2B1P-280, 0x3.CB8CCAD62ED10P+460))

    @test isequal_interval(sqrt(bareinterval(0x2.D572639DC5FA8P-468, 0x1.95CF42AA171CDP-160)), bareinterval(0x6.BBC8A036CC930P-236, 0x1.4250C275A7B2BP-80))

    @test isequal_interval(sqrt(bareinterval(0x4.705A028302DB0P-532, 0x2.E57341C14970CP+324)), bareinterval(0x8.6D6D9A3EA2160P-268, 0x6.CEB17F56F1B50P+160))

    @test isequal_interval(sqrt(bareinterval(0x4.DBA1D21D6F308P+144, 0x3.667988C57865AP+196)), bareinterval(0x2.343E215EB2264P+72, 0x7.603E67F0E1DD0P+96))

    @test isequal_interval(sqrt(bareinterval(0x4.9FA5A1E4DF740P-328, 0x1.11B85141B78F6P-240)), bareinterval(0x2.26777C4E368BEP-164, 0x1.08B63617A4210P-120))

    @test isequal_interval(sqrt(bareinterval(0xA.0CDE9DC015B08P+360, 0xF.99D84F862AC58P+524)), bareinterval(0x3.2B934CDCC29E0P+180, 0xF.CC99981010AD0P+260))

    @test isequal_interval(sqrt(bareinterval(0x6.88441038D56B8P-108, 0x3.3D65C09938132P+136)), bareinterval(0xA.392C9B2283838P-56, 0x1.CCC9C68E6B873P+68))

    @test isequal_interval(sqrt(bareinterval(0x7.1761CAB055134P-356, 0x1.92EFD09488689P-76)), bareinterval(0xA.A6DE001E1A878P-180, 0x5.04B0B42B185F4P-40))

    @test isequal_interval(sqrt(bareinterval(0x6.2085E427413C8P-252, 0xB.8CDD3B024EA10P-36)), bareinterval(0x9.E6B17DD90B818P-128, 0xD.9821AE0A3F288P-20))

    @test isequal_interval(sqrt(bareinterval(0xB.F5F1C0FA33978P-504, 0x4.924DD8D50B1CCP+72)), bareinterval(0x3.755B7F9B147FCP-252, 0x2.235AF64AA2532P+36))

    @test isequal_interval(sqrt(bareinterval(0xB.BC7E37EB2D388P-216, 0x1.CFE27BB53DEBBP+192)), bareinterval(0x3.6D0318CB65970P-108, 0x1.589B93C7CC280P+96))

    @test isequal_interval(sqrt(bareinterval(0x1.E139DD116F868P-688, 0xD.2545346D68FD0P-148)), bareinterval(0x1.5EFD65C23F515P-344, 0xE.80B36809CA340P-76))

    @test isequal_interval(sqrt(bareinterval(0x2.E0C8E64A890ACP+192, 0x2.6A898D2CAA9A4P+260)), bareinterval(0x1.B24CEBB3D4B84P+96, 0x6.37B4CD9068634P+128))

    @test isequal_interval(sqrt(bareinterval(0x5.9C4642ED78BC8P-340, 0x4.631BD2232F0C0P+588)), bareinterval(0x9.797C4D6802170P-172, 0x8.60D1F01F1A8D8P+292))

    @test isequal_interval(sqrt(bareinterval(0xF.C05EA810DFE88P-180, 0xA.05884FBED5F48P-152)), bareinterval(0xF.E00F72E6C82F8P-92, 0x3.2A6AD8ACFCBB0P-76))

    @test isequal_interval(nthpow(bareinterval(-0xA.644C9D88EA8C8P-152, -0xD.8EC7927926F18P-944), 2), bareinterval(0x0.0000000000000P+0, 0x6.BFD4840B33478P-300))

    @test isequal_interval(nthpow(bareinterval(-0x1.9EE1A9DB994F5P-436, -0x6.D914701C82FECP-624), 2), bareinterval(0x0.0000000000000P+0, 0x2.A05EA84E4893CP-872))

    @test isequal_interval(nthpow(bareinterval(-0x5.65057F3EFFC60P+4, -0x2.3617CF5815ECAP-960), 2), bareinterval(0x0.0000000000000P+0, 0x1.D1A144EFBEB44P+12))

    @test isequal_interval(nthpow(bareinterval(-0x1.975299CCB0E08P-372, +0xB.BEC7D35B45B00P-588), 2), bareinterval(0x0.0000000000000P+0, 0x2.8817BFAFBDF18P-744))

    @test isequal_interval(nthpow(bareinterval(-0x3.51D388D47AED2P-356, -0x1.C3A9CD7025105P-564), 2), bareinterval(0x0.0000000000000P+0, 0xB.051CC05C2EBE0P-712))

    @test isequal_interval(nthpow(bareinterval(-0xC.DB363268CF708P-332, -0x2.171B7D7BFE4E0P-412), 2), bareinterval(0x4.5E83E96FF693CP-824, 0xA.548CA7F8C13A0P-660))

    @test isequal_interval(nthpow(bareinterval(-0x1.32690AAC2472DP-40, -0x8.706EBDCF39C88P-792), 2), bareinterval(0x0.0000000000000P+0, 0x1.6EBF489D48CA5P-80))

    @test isequal_interval(nthpow(bareinterval(-0x5.0145AF0C53324P-200, -0x2.F5A0CB3301856P-204), 2), bareinterval(0x8.C23056BA480A8P-408, 0x1.90CBA74D12CF4P-396))

    @test isequal_interval(nthpow(bareinterval(0xF.4077C7E8CD6A0P-268, 0x3.753426098AC5AP-80), 2), bareinterval(0xE.89E458947EFA8P-532, 0xB.F4E1999D73020P-160))

    @test isequal_interval(nthpow(bareinterval(-0xB.B25F8D8BB7FB8P-376, -0x2.017A332F9B05CP-916), 2), bareinterval(0x0.0000000000000P+0, 0x8.8D07F2E827770P-748))

    @test isequal_interval(nthpow(bareinterval(-0xD.947CA427FDFE0P-592, +0xE.3BE493B5BC8E8P-16), 2), bareinterval(0x0.0000000000000P+0, 0xC.A9B03500DD578P-28))

    @test isequal_interval(nthpow(bareinterval(-0x9.C46198B2471F0P-336, -0x1.65ED85DF2D4B7P-576), 2), bareinterval(0x0.0000000000000P+0, 0x5.F6582538F0F44P-668))

    @test isequal_interval(nthpow(bareinterval(-0x3.2C867C027DB44P-936, +0x6.1883EA827AB6CP-388), 2), bareinterval(0x0.0000000000000P+0, 0x2.52887FE100FF0P-772))

    @test isequal_interval(nthpow(bareinterval(-0x3.560EF91C47DEAP-492, +0x5.413664DD17ABCP-20), 2), bareinterval(0x0.0000000000000P+0, 0x1.B9CBC9B69E7BFP-36))

    @test isequal_interval(nthpow(bareinterval(-0x8.36BFCD74A6D68P-304, -0x3.2C20EB130D510P-836), 2), bareinterval(0x0.0000000000000P+0, 0x4.377B251ABDCC0P-604))

    @test isequal_interval(nthpow(bareinterval(-0x6.BCEC84603958CP-500, -0x1.068B13DA99666P-760), 2), bareinterval(0x0.0000000000000P+0, 0x2.D668271745A42P-996))

    @test isequal_interval(nthpow(bareinterval(-0x1.2789C2D583BCDP-568, -0x1.F2BD89DAD0665P-780), 2), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(nthpow(bareinterval(-0xC.FE4E8D857E3E0P-548, +0x1.580844B9DC45CP-780), 2), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(nthpow(bareinterval(-0xC.508D29ACB01B8P-52, +0x1.B1E6B793078DDP-664), 2), bareinterval(0x0.0000000000000P+0, 0x9.7A69470135FA8P-100))

    @test isequal_interval(nthpow(bareinterval(-0xA.12F7783880A78P-124, -0x3.765DF69EE106EP-548), 2), bareinterval(0x0.0000000000000P+0, 0x6.57CBD208B34ACP-244))

    @test isequal_interval(nthpow(bareinterval(-0x6.3A58D52FDF844P-896, -0x1.039E2518CF503P-1008), 2), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(nthpow(bareinterval(-0xB.DD3171FDEEC18P-168, +0x1.069E434EE9E0FP-740), 2), bareinterval(0x0.0000000000000P+0, 0x8.CC15E342FC8D8P-332))

    @test isequal_interval(nthpow(bareinterval(-0x3.CF0053257533AP-776, -0x1.7883A587654E5P-928), 2), bareinterval(0x0.0000000000000P+0, 0x4.0000000000000P-1076))

    @test isequal_interval(nthpow(bareinterval(0x1.455801D3D2B63P-704, 0x3.A4C915783D07AP-28), 2), bareinterval(0x0.0000000000000P+0, 0xD.46C8C24634FC8P-56))

    @test isequal_interval(nthpow(bareinterval(-0x2.097D06F4DE3E2P-376, +0x2.2E7561FD9255EP-772), 2), bareinterval(0x0.0000000000000P+0, 0x4.264E23607BEA8P-752))

    @test isequal_interval(nthpow(bareinterval(-0x1.7E13DBB66E5A3P-84, -0x6.BC8F45D6A8F48P-540), 2), bareinterval(0x0.0000000000000P+0, 0x2.3A3F453ECAFB4P-168))

    @test isequal_interval(nthpow(bareinterval(-0x4.1F50C5F2CDA54P-276, -0x3.DF16F79756422P-496), 2), bareinterval(0xE.FCF2D2F52B4C0P-992, 0x1.0FE5AD9038BC9P-548))

    @test isequal_interval(nthpow(bareinterval(-0x7.ECC4C5EEC4CACP-328, -0x2.E02E1DB7A08F6P-876), 2), bareinterval(0x0.0000000000000P+0, 0x3.ECDBE373EAC94P-652))

    @test isequal_interval(nthpow(bareinterval(-0xC.1BC7A4C89D440P-256, +0x2.A7F56252D1D34P-608), 2), bareinterval(0x0.0000000000000P+0, 0x9.29DBB2B42A988P-508))

    @test isequal_interval(nthpow(bareinterval(-0xB.CE50D7B2F2868P-236, -0xE.6B08988339B80P-432), 2), bareinterval(0xC.FE1B0DE21E568P-860, 0x8.B6138BE0C5B78P-468))

end
