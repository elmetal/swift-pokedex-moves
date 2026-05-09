import Foundation
import Testing
@testable import PokedexMoves

@Test func definesTackleMove() {
    #expect(PokemonMove.tackle.rawValue == "tackle")
}

@Test func includesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.all.count == 4)
    #expect(PokemonMoveDefinitions.gen01.count == 4)
    #expect(PokemonMoveDefinitions.gen01.first?.move == .tackle)
    #expect(PokemonMoveDefinitions.tackle.move == .tackle)
    #expect(PokemonMoveDefinitions.tackle.introducedIn == .i)
    #expect(PokemonMoveDefinitions.tackle.parameters.type == .normal)
    #expect(PokemonMoveDefinitions.tackle.parameters.pp == 35)
    #expect(PokemonMoveDefinitions.tackle.parameters.power == .fixed(40))
    #expect(PokemonMoveDefinitions.tackle.parameters.hits == .one)
    #expect(PokemonMoveDefinitions.tackle.parameters.accuracy == .percent(100))
    #expect(PokemonMoveDefinitions.tackle.parameters.priority == 0)
    #expect(PokemonMoveDefinitions.tackle.parameters.category == .physical)
    #expect(PokemonMoveDefinitions.tackle.parameters.target == .target)
    #expect(PokemonMoveDefinitions.tackle.parameterHistory.count == 1)
    #expect(PokemonMoveDefinitions.definition(for: .tackle) == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.standardDefinition == PokemonMoveDefinitions.tackle)
    #expect(PokemonMove.tackle.introducedIn == .i)
    #expect(PokemonMove.tackle.type == .normal)
    #expect(PokemonMove.tackle.pp == 35)
    #expect(PokemonMove.tackle.power == .fixed(40))
    #expect(PokemonMove.tackle.hits == .one)
    #expect(PokemonMove.tackle.accuracy == .percent(100))
    #expect(PokemonMove.tackle.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
    #expect(PokemonMove.tackle.target == .target)
    #expect(PokemonMove.tackle.parameters == PokemonMoveDefinitions.tackle.parameters)
}

@Test func includesGenerationIMoveDefinitions() {
    #expect(PokemonMove.growl.pp == 40)
    #expect(PokemonMove.growl.power == .none)
    #expect(PokemonMove.growl.hits == .one)
    #expect(PokemonMove.growl.accuracy == .percent(100))
    #expect(PokemonMove.growl.category == .status)
    #expect(PokemonMove.growl.target == .allOpposingPokemon)

    #expect(PokemonMove.swift.pp == 20)
    #expect(PokemonMove.swift.power == .fixed(60))
    #expect(PokemonMove.swift.hits == .one)
    #expect(PokemonMove.swift.accuracy == .alwaysHits)
    #expect(PokemonMove.swift.category == .special)
    #expect(PokemonMove.swift.target == .allOpposingPokemon)

    #expect(PokemonMove.hypnosis.pp == 20)
    #expect(PokemonMove.hypnosis.power == .none)
    #expect(PokemonMove.hypnosis.hits == .one)
    #expect(PokemonMove.hypnosis.accuracy == .percent(60))
    #expect(PokemonMove.hypnosis.category == .status)
    #expect(PokemonMove.hypnosis.target == .target)
}

@Test func looksUpTackleParametersByVersionGroupAndGeneration() throws {
    #expect(PokemonMove.tackle.parameters(in: .redBlue) == PokemonMove.tackle.parameters)
    #expect(PokemonMove.tackle.parameters(in: .scarletViolet) == PokemonMove.tackle.parameters)
    #expect(PokemonMove.tackle.parameters(in: PokemonVersionGroup.champions) == PokemonMove.tackle.parameters)
    #expect(try PokemonMove.tackle.parameters(in: .i) == PokemonMove.tackle.parameters)
    #expect(try PokemonMove.tackle.parameters(in: .ix) == PokemonMove.tackle.parameters)
    #expect(try PokemonMove.tackle.parameters(in: .champions) == PokemonMove.tackle.parameters)
    #expect(PokemonGeneration.latest == .champions)
    #expect(PokemonVersionGroup.latest == .champions)
    #expect(PokemonVersionGroup.champions.generation == .champions)
}

@Test func reportsAmbiguousGenerationParameters() {
    #expect(PokemonMove.hypnosis.parameters(in: .diamondPearl)?.accuracy == .percent(70))
    #expect(PokemonMove.hypnosis.parameters(in: .platinum)?.accuracy == .percent(60))
    #expect(throws: PokemonMoveParameterLookupError.ambiguousParameters(
        .iv,
        versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver]
    )) {
        try PokemonMove.hypnosis.parameters(in: .iv)
    }
}

@Test func modelsMovePowerAndAccuracy() {
    #expect(PokemonMove.Power.fixed(40) == .fixed(40))
    #expect(PokemonMove.Power.perHit([20, 40, 60]) == .perHit([20, 40, 60]))
    #expect(PokemonMove.Power.varies != .none)
    #expect(PokemonMove.Accuracy.percent(100) == .percent(100))
    #expect(PokemonMove.Accuracy.alwaysHits != .notApplicable)
}

@Test func modelsMoveHits() {
    #expect(PokemonMove.Hits.one == .one)
    #expect(PokemonMove.Hits.fixed(2) == .fixed(2))
    #expect(PokemonMove.Hits.range(2...5) == .range(2...5))
    #expect(PokemonMove.Hits.varies != .one)
}

@Test func includesMoveTargets() {
    let targets: [PokemonMove.Target] = [
        .move,
        .target,
        .ally,
        .usersSide,
        .userOrAlly,
        .opposingSide,
        .user,
        .opposingPokemon,
        .randomOpposingPokemon,
        .allOtherPokemon,
        .allOpposingPokemon,
        .battlefield,
        .userAndAllies,
        .allPokemon,
        .allies,
    ]

    #expect(targets.count == 15)
}

@Test func namesTackleMoveDefinition() {
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMoveDefinitions.tackle.name(locale: Locale(languageCode: .japanese)) == "たいあたり")
    #expect(PokemonMoveDefinitions.growl.name(locale: Locale(languageCode: .english)) == "Growl")
    #expect(PokemonMoveDefinitions.growl.name(locale: Locale(languageCode: .japanese)) == "なきごえ")
    #expect(PokemonMoveDefinitions.hypnosis.name(locale: Locale(languageCode: .english)) == "Hypnosis")
    #expect(PokemonMoveDefinitions.hypnosis.name(locale: Locale(languageCode: .japanese)) == "さいみんじゅつ")
    #expect(PokemonMoveDefinitions.swift.name(locale: Locale(languageCode: .english)) == "Swift")
    #expect(PokemonMoveDefinitions.swift.name(locale: Locale(languageCode: .japanese)) == "スピードスター")
}

@Test func formatsTackleMoveName() {
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .english)) == "Tackle")
    #expect(PokemonMove.tackle.formatted(locale: Locale(languageCode: .japanese)) == "たいあたり")
    #expect(PokemonMove.swift.formatted(locale: Locale(languageCode: .japanese)) == "スピードスター")
}

@Test func parsesTackleMoveName() throws {
    let english = PokemonMove.ParseStrategy(locale: Locale(languageCode: .english))
    let japanese = PokemonMove.ParseStrategy(locale: Locale(languageCode: .japanese))

    #expect(try english.parse("Tackle") == .tackle)
    #expect(try english.parse("tackle") == .tackle)
    #expect(try english.parse("Swift") == .swift)
    #expect(try english.parse("hypnosis") == .hypnosis)
    #expect(try japanese.parse("たいあたり") == .tackle)
    #expect(try japanese.parse("なきごえ") == .growl)
    #expect(try japanese.parse("さいみんじゅつ") == .hypnosis)
    #expect(try japanese.parse("スピードスター") == .swift)
}

@Test func formatsMoveCategories() {
    let english = Locale(languageCode: .english)
    let japanese = Locale(languageCode: .japanese)

    #expect(PokemonMove.Category.physical.formatted(locale: english) == "Physical")
    #expect(PokemonMove.Category.special.formatted(locale: english) == "Special")
    #expect(PokemonMove.Category.status.formatted(locale: english) == "Status")
    #expect(PokemonMove.Category.physical.formatted(locale: japanese) == "物理")
    #expect(PokemonMove.Category.special.formatted(locale: japanese) == "特殊")
    #expect(PokemonMove.Category.status.formatted(locale: japanese) == "変化")
}
