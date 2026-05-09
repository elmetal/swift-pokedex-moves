import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はがねのつばさ in Japanese.
    ///
    /// The localized name of this move is `"Steel Wing"` in English and
    /// `"はがねのつばさ"` in Japanese.
    ///
    /// The move's raw value is `"steel-wing"`.
    static let steelWing = SteelWingMove.move
}

enum SteelWingMove {
    static let move = PokemonMove(rawValue: "steel-wing")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 25,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Steel Wing",
            .japanese: "はがねのつばさ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let steelWing = SteelWingMove.definition
}
