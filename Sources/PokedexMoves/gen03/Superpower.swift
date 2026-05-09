import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ばかぢから in Japanese.
    ///
    /// The localized name of this move is `"Superpower"` in English and
    /// `"ばかぢから"` in Japanese.
    ///
    /// The move's raw value is `"superpower"`.
    static let superpower = SuperpowerMove.move
}

enum SuperpowerMove {
    static let move = PokemonMove(rawValue: "superpower")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Superpower",
            .japanese: "ばかぢから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let superpower = SuperpowerMove.definition
}
