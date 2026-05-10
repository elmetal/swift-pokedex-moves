import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ラスターカノン in Japanese.
    ///
    /// The localized name of this move is `"Flash Cannon"` in English and
    /// `"ラスターカノン"` in Japanese.
    ///
    /// The move's raw value is `"flash-cannon"`.
    static let flashCannon = FlashCannonMove.move
}

enum FlashCannonMove {
    static let move = PokemonMove(rawValue: "flash-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Flash Cannon",
            .japanese: "ラスターカノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flashCannon = FlashCannonMove.definition
}
