import Foundation

public extension PokemonMove {
    /// The Pokemon move known as バレットパンチ in Japanese.
    ///
    /// The localized name of this move is `"Bullet Punch"` in English and
    /// `"バレットパンチ"` in Japanese.
    ///
    /// The move's raw value is `"bullet-punch"`.
    static let bulletPunch = BulletPunchMove.move
}

enum BulletPunchMove {
    static let move = PokemonMove(rawValue: "bullet-punch")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Bullet Punch",
            .japanese: "バレットパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bulletPunch = BulletPunchMove.definition
}
