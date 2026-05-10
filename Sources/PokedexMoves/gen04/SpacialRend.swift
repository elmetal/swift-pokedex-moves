import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あくうせつだん in Japanese.
    ///
    /// The localized name of this move is `"Spacial Rend"` in English and
    /// `"あくうせつだん"` in Japanese.
    ///
    /// The move's raw value is `"spacial-rend"`.
    static let spacialRend = SpacialRendMove.move
}

enum SpacialRendMove {
    static let move = PokemonMove(rawValue: "spacial-rend")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Spacial Rend",
            .japanese: "あくうせつだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spacialRend = SpacialRendMove.definition
}
