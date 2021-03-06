using DocumenterCitations
using Test


@testset "tex2unicode" begin
    @test DocumenterCitations.tex2unicode("-- ---") == "– —"
    @test DocumenterCitations.tex2unicode(
      raw"\`{o}\'{o}\^{o}\~{o}\={o}\u{o}\.{o}\\\"{o}\r{a}\H{o}\v{s}\d{u}\c{c}\k{a}\b{b}") == "òóôõōŏȯöåőšụçąḇ"
end
