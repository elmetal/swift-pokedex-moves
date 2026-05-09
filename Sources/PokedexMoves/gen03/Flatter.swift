import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おだてる in Japanese.
    ///
    /// The localized name of this move is `"Flatter"` in English and
    /// `"おだてる"` in Japanese.
    ///
    /// The move's raw value is `"flatter"`.
    static let flatter = FlatterMove.move
}

enum FlatterMove {
    static let move = PokemonMove(rawValue: "flatter")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Flatter",
            .japanese: "おだてる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flatter = FlatterMove.definition
}
