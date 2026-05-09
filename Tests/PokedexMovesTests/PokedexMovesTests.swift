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
    #expect(PokemonMoveDefinitions.tackle.parameters.power == .fixed(40))
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
    #expect(PokemonMove.tackle.accuracy == .percent(100))
    #expect(PokemonMove.tackle.priority == 0)
    #expect(PokemonMove.tackle.category == .physical)
    #expect(PokemonMove.tackle.target == .target)
    #expect(PokemonMove.tackle.parameters == PokemonMoveDefinitions.tackle.parameters)
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
    let diamondPearl = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        accuracy: .percent(70),
        priority: 0,
        category: .status,
        target: .target
    )
    let platinum = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        accuracy: .percent(60),
        priority: 0,
        category: .status,
        target: .target
    )
    let definition = PokemonMoveDefinition(
        move: PokemonMove(rawValue: "hypnosis"),
        introducedIn: .i,
        parameterHistory: [
            .init(versionGroups: [.diamondPearl], parameters: diamondPearl),
            .init(versionGroups: [.platinum], parameters: platinum),
        ],
        localizedNames: [.english: "Hypnosis"]
    )

    #expect(definition.parameters(in: .diamondPearl) == diamondPearl)
    #expect(definition.parameters(in: .platinum) == platinum)
    #expect(throws: PokemonMoveParameterLookupError.ambiguousParameters(
        .iv,
        versionGroups: [.diamondPearl, .platinum]
    )) {
        try definition.parameters(in: .iv)
    }
}

@Test func modelsMovePowerAndAccuracy() {
    #expect(PokemonMove.Power.fixed(40) == .fixed(40))
    #expect(PokemonMove.Power.varies != .none)
    #expect(PokemonMove.Accuracy.percent(100) == .percent(100))
    #expect(PokemonMove.Accuracy.alwaysHits != .notApplicable)
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

    #expect(PokemonMove.Category.physical.formatted(locale: english) == "Physical")
    #expect(PokemonMove.Category.special.formatted(locale: english) == "Special")
    #expect(PokemonMove.Category.status.formatted(locale: english) == "Status")
    #expect(PokemonMove.Category.physical.formatted(locale: japanese) == "物理")
    #expect(PokemonMove.Category.special.formatted(locale: japanese) == "特殊")
    #expect(PokemonMove.Category.status.formatted(locale: japanese) == "変化")
}
