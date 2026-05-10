import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はどうだん in Japanese.
    ///
    /// The localized name of this move is `"Aura Sphere"` in English and
    /// `"はどうだん"` in Japanese.
    ///
    /// The move's raw value is `"aura-sphere"`.
    static let auraSphere = AuraSphereMove.move
}

enum AuraSphereMove {
    static let move = PokemonMove(rawValue: "aura-sphere")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(80),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Aura Sphere",
            .japanese: "はどうだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let auraSphere = AuraSphereMove.definition
}
