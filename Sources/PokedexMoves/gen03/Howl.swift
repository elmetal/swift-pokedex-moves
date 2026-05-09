import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とおぼえ in Japanese.
    ///
    /// The localized name of this move is `"Howl"` in English and
    /// `"とおぼえ"` in Japanese.
    ///
    /// The move's raw value is `"howl"`.
    static let howl = HowlMove.move
}

enum HowlMove {
    static let move = PokemonMove(rawValue: "howl")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
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
            .english: "Howl",
            .japanese: "とおぼえ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let howl = HowlMove.definition
}
