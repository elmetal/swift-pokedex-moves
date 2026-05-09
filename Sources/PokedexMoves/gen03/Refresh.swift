import Foundation

public extension PokemonMove {
    /// The Pokemon move known as リフレッシュ in Japanese.
    ///
    /// The localized name of this move is `"Refresh"` in English and
    /// `"リフレッシュ"` in Japanese.
    ///
    /// The move's raw value is `"refresh"`.
    static let refresh = RefreshMove.move
}

enum RefreshMove {
    static let move = PokemonMove(rawValue: "refresh")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
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
            .english: "Refresh",
            .japanese: "リフレッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let refresh = RefreshMove.definition
}
