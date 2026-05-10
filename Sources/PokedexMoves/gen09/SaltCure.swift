import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しおづけ in Japanese.
    ///
    /// The localized name of this move is `"Salt Cure"` in English and
    /// `"しおづけ"` in Japanese.
    ///
    /// The move's raw value is `"salt-cure"`.
    static let saltCure = SaltCureMove.move
}

enum SaltCureMove {
    static let move = PokemonMove(rawValue: "salt-cure")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Salt Cure",
            .japanese: "しおづけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let saltCure = SaltCureMove.definition
}
