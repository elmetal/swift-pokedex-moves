import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きょじゅうざん in Japanese.
    ///
    /// The localized name of this move is `"Behemoth Blade"` in English and
    /// `"きょじゅうざん"` in Japanese.
    ///
    /// The move's raw value is `"behemoth-blade"`.
    static let behemothBlade = BehemothBladeMove.move
}

enum BehemothBladeMove {
    static let move = PokemonMove(rawValue: "behemoth-blade")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Behemoth Blade",
            .japanese: "きょじゅうざん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let behemothBlade = BehemothBladeMove.definition
}
