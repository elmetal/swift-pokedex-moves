import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みをけずる in Japanese.
    ///
    /// The localized name of this move is `"Fillet Away"` in English and
    /// `"みをけずる"` in Japanese.
    ///
    /// The move's raw value is `"fillet-away"`.
    static let filletAway = FilletAwayMove.move
}

enum FilletAwayMove {
    static let move = PokemonMove(rawValue: "fillet-away")
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
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Fillet Away",
            .japanese: "みをけずる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let filletAway = FilletAwayMove.definition
}
