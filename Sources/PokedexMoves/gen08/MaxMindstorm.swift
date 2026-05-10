import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイサイコ in Japanese.
    ///
    /// The localized name of this move is `"Max Mindstorm"` in English and
    /// `"ダイサイコ"` in Japanese.
    ///
    /// The move's raw value is `"max-mindstorm"`.
    static let maxMindstorm = MaxMindstormMove.move
}

enum MaxMindstormMove {
    static let move = PokemonMove(rawValue: "max-mindstorm")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Max Mindstorm",
            .japanese: "ダイサイコ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let maxMindstorm = MaxMindstormMove.definition
}
