import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ねがいごと in Japanese.
    ///
    /// The localized name of this move is `"Wish"` in English and
    /// `"ねがいごと"` in Japanese.
    ///
    /// The move's raw value is `"wish"`.
    static let wish = WishMove.move
}

enum WishMove {
    static let move = PokemonMove(rawValue: "wish")
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
            .english: "Wish",
            .japanese: "ねがいごと",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let wish = WishMove.definition
}
