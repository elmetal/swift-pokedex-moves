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
    #expect(Tackle.type == .normal)
    #expect(Tackle.pp == 35)
    #expect(Tackle.power == 40)
    #expect(Tackle.accuracy == 100)
    #expect(Tackle.priority == 0)
    #expect(Tackle.category == .physical)
    #expect(PokemonMove.tackle.type == .normal)
    #expect(PokemonMove.tackle.pp == 35)
    #expect(PokemonMove.tackle.power == 40)
    #expect(PokemonMove.tackle.accuracy == 100)
    #expect(PokemonMove.tackle.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
}

@Test func namesTackleMoveDefinition() {
    #expect(Tackle.name(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(Tackle.name(locale: Locale(languageCode: .japanese)) == "たいあたり")
}

@Test func formatsTackleMoveName() {
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .japanese)) == "たいあたり")
}

@Test func parsesTackleMoveName() throws {
    let english = PokemonMove.ParseStrategy(locale: Locale(languageCode: .english))
    let japanese = PokemonMove.ParseStrategy(locale: Locale(languageCode: .japanese))

    #expect(try english.parse("Tackle") == .tackle)
    #expect(try english.parse("tackle") == .tackle)
    #expect(try japanese.parse("たいあたり") == .tackle)
}
