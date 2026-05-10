import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ウッドハンマー in Japanese.
    ///
    /// The localized name of this move is `"Wood Hammer"` in English and
    /// `"ウッドハンマー"` in Japanese.
    ///
    /// The move's raw value is `"wood-hammer"`.
    static let woodHammer = WoodHammerMove.move
}

enum WoodHammerMove {
    static let move = PokemonMove(rawValue: "wood-hammer")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Wood Hammer",
            .japanese: "ウッドハンマー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let woodHammer = WoodHammerMove.definition
}
