import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マグネットボム in Japanese.
    ///
    /// The localized name of this move is `"Magnet Bomb"` in English and
    /// `"マグネットボム"` in Japanese.
    ///
    /// The move's raw value is `"magnet-bomb"`.
    static let magnetBomb = MagnetBombMove.move
}

enum MagnetBombMove {
    static let move = PokemonMove(rawValue: "magnet-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Magnet Bomb",
            .japanese: "マグネットボム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magnetBomb = MagnetBombMove.definition
}
