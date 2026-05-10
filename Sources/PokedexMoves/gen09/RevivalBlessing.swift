import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さいきのいのり in Japanese.
    ///
    /// The localized name of this move is `"Revival Blessing"` in English and
    /// `"さいきのいのり"` in Japanese.
    ///
    /// The move's raw value is `"revival-blessing"`.
    static let revivalBlessing = RevivalBlessingMove.move
}

enum RevivalBlessingMove {
    static let move = PokemonMove(rawValue: "revival-blessing")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .faintedPokemon
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
            .english: "Revival Blessing",
            .japanese: "さいきのいのり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let revivalBlessing = RevivalBlessingMove.definition
}
