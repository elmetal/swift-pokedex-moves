import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しんぴのつるぎ in Japanese.
    ///
    /// The localized name of this move is `"Secret Sword"` in English and
    /// `"しんぴのつるぎ"` in Japanese.
    ///
    /// The move's raw value is `"secret-sword"`.
    static let secretSword = SecretSwordMove.move
}

enum SecretSwordMove {
    static let move = PokemonMove(rawValue: "secret-sword")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Secret Sword",
            .japanese: "しんぴのつるぎ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let secretSword = SecretSwordMove.definition
}
