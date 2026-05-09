import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ニードルアーム in Japanese.
    ///
    /// The localized name of this move is `"Needle Arm"` in English and
    /// `"ニードルアーム"` in Japanese.
    ///
    /// The move's raw value is `"needle-arm"`.
    static let needleArm = NeedleArmMove.move
}

enum NeedleArmMove {
    static let move = PokemonMove(rawValue: "needle-arm")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Needle Arm",
            .japanese: "ニードルアーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let needleArm = NeedleArmMove.definition
}
