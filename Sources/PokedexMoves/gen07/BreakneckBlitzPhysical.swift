import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ウルトラダッシュアタック in Japanese.
    ///
    /// The localized name of this move is `"Breakneck Blitz"` in English and
    /// `"ウルトラダッシュアタック"` in Japanese.
    ///
    /// The move's raw value is `"breakneck-blitz--physical"`.
    static let breakneckBlitzPhysical = BreakneckBlitzPhysicalMove.move
}

enum BreakneckBlitzPhysicalMove {
    static let move = PokemonMove(rawValue: "breakneck-blitz--physical")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Breakneck Blitz",
            .japanese: "ウルトラダッシュアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let breakneckBlitzPhysical = BreakneckBlitzPhysicalMove.definition
}
