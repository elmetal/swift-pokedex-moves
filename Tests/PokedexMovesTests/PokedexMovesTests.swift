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
    #expect(PokemonMoveDefinitions.tackle.move == .tackle)
    #expect(PokemonMoveDefinitions.tackle.introducedIn == .i)
    #expect(PokemonMoveDefinitions.tackle.parameters.type == .normal)
    #expect(PokemonMoveDefinitions.tackle.parameters.pp == 35)
    #expect(PokemonMoveDefinitions.tackle.parameters.power == 40)
    #expect(PokemonMoveDefinitions.tackle.parameters.accuracy == 100)
    #expect(PokemonMoveDefinitions.tackle.parameters.priority == 0)
    #expect(PokemonMoveDefinitions.tackle.parameters.category == .physical)
    #expect(PokemonMoveDefinitions.tackle.parameters.target == .singleAdjacentPokemon)
    #expect(PokemonMoveDefinitions.definition(for: .tackle) == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.standardDefinition == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.introducedIn == .i)
    #expect(PokemonMove.tackle.type == .normal)
    #expect(PokemonMove.tackle.pp == 35)
    #expect(PokemonMove.tackle.power == 40)
    #expect(PokemonMove.tackle.accuracy == 100)
    #expect(PokemonMove.tackle.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
    #expect(PokemonMove.tackle.target == .singleAdjacentPokemon)
    #expect(PokemonMove.tackle.parameters == PokemonMoveDefinitions.tackle.parameters)
}

@Test func namesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .japanese)) == "たいあたり")
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

@Test func formatsMoveCategories() {
    let english = Locale(languageCode: .english)
    let japanese = Locale(languageCode: .japanese)

    #expect(PokemonMoveCategory.physical.formatted(locale: english) == "Physical")
    #expect(PokemonMoveCategory.special.formatted(locale: english) == "Special")
    #expect(PokemonMoveCategory.status.formatted(locale: english) == "Status")
    #expect(PokemonMoveCategory.physical.formatted(locale: japanese) == "物理")
    #expect(PokemonMoveCategory.special.formatted(locale: japanese) == "特殊")
    #expect(PokemonMoveCategory.status.formatted(locale: japanese) == "変化")
}
