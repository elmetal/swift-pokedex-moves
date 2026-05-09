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
    #expect(Tackle.introducedIn == .i)
    #expect(Tackle.parameters.type == .normal)
    #expect(Tackle.parameters.pp == 35)
    #expect(Tackle.parameters.power == 40)
    #expect(Tackle.parameters.accuracy == 100)
    #expect(Tackle.parameters.priority == 0)
    #expect(Tackle.parameters.category == .physical)
    #expect(Tackle.parameters.target == .singleAdjacentPokemon)
    #expect(PokemonMove.tackle.introducedIn == .i)
    #expect(PokemonMove.tackle.parameters?.type == .normal)
    #expect(PokemonMove.tackle.parameters?.pp == 35)
    #expect(PokemonMove.tackle.parameters?.power == 40)
    #expect(PokemonMove.tackle.parameters?.accuracy == 100)
    #expect(PokemonMove.tackle.parameters?.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
    #expect(PokemonMove.tackle.parameters?.target == .singleAdjacentPokemon)
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
