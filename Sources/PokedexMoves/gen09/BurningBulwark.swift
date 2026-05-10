import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かえんのまもり in Japanese.
    ///
    /// The localized name of this move is `"Burning Bulwark"` in English and
    /// `"かえんのまもり"` in Japanese.
    ///
    /// The move's raw value is `"burning-bulwark"`.
    static let burningBulwark = BurningBulwarkMove.move
}

enum BurningBulwarkMove {
    static let move = PokemonMove(rawValue: "burning-bulwark")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
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
            .english: "Burning Bulwark",
            .japanese: "かえんのまもり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let burningBulwark = BurningBulwarkMove.definition
}
