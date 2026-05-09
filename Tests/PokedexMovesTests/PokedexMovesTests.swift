import Testing
@testable import PokedexMoves

@Test func definesTackleMove() {
    #expect(PokemonMove.tackle.rawValue == "tackle")
}
