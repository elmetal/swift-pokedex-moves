import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ＤＤラリアット in Japanese.
    ///
    /// The localized name of this move is `"Darkest Lariat"` in English and
    /// `"ＤＤラリアット"` in Japanese.
    ///
    /// The move's raw value is `"darkest-lariat"`.
    static let darkestLariat = DarkestLariatMove.move
}

enum DarkestLariatMove {
    static let move = PokemonMove(rawValue: "darkest-lariat")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Darkest Lariat",
            .japanese: "ＤＤラリアット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let darkestLariat = DarkestLariatMove.definition
}
