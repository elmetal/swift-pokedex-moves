import Foundation

public extension PokemonMove {
    /// The Pokemon move known as のみこむ in Japanese.
    ///
    /// The localized name of this move is `"Swallow"` in English and
    /// `"のみこむ"` in Japanese.
    ///
    /// The move's raw value is `"swallow"`.
    static let swallow = SwallowMove.move
}

enum SwallowMove {
    static let move = PokemonMove(rawValue: "swallow")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Swallow",
            .japanese: "のみこむ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let swallow = SwallowMove.definition
}
