import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きょじゅうだん in Japanese.
    ///
    /// The localized name of this move is `"Behemoth Bash"` in English and
    /// `"きょじゅうだん"` in Japanese.
    ///
    /// The move's raw value is `"behemoth-bash"`.
    static let behemothBash = BehemothBashMove.move
}

enum BehemothBashMove {
    static let move = PokemonMove(rawValue: "behemoth-bash")
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
            .english: "Behemoth Bash",
            .japanese: "きょじゅうだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let behemothBash = BehemothBashMove.definition
}
