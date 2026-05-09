import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いわなだれ in Japanese.
    ///
    /// The localized name of this move is `"Rock Slide"` in English and
    /// `"いわなだれ"` in Japanese.
    ///
    /// The move's raw value is `"rock-slide"`.
    static let rockSlide = RockSlideMove.move
}

enum RockSlideMove {
    static let move = PokemonMove(rawValue: "rock-slide")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Rock Slide",
            .japanese: "いわなだれ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockSlide = RockSlideMove.definition
}
