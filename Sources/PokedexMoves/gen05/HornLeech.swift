import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ウッドホーン in Japanese.
    ///
    /// The localized name of this move is `"Horn Leech"` in English and
    /// `"ウッドホーン"` in Japanese.
    ///
    /// The move's raw value is `"horn-leech"`.
    static let hornLeech = HornLeechMove.move
}

enum HornLeechMove {
    static let move = PokemonMove(rawValue: "horn-leech")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Horn Leech",
            .japanese: "ウッドホーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hornLeech = HornLeechMove.definition
}
