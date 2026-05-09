import Foundation
import Testing
@testable import PokedexMoves

@Test func definesTackleMove() {
    #expect(PokemonMove.tackle.rawValue == "tackle")
}

@Test func includesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.all.count == 1)
    #expect(PokemonMoveDefinitions.gen01.count == 1)
    #expect(PokemonMoveDefinitions.gen01.first?.move == .tackle)
    #expect(Tackle.category == .physical)
}

@Test func namesTackleMoveDefinition() {
    #expect(Tackle.name(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(Tackle.name(locale: Locale(languageCode: .japanese)) == "たいあたり")
}
