import Foundation

public extension PokemonMove {
    /// The Pokemon move known as あおいほのお in Japanese.
    ///
    /// The localized name of this move is `"Blue Flare"` in English and
    /// `"あおいほのお"` in Japanese.
    ///
    /// The move's raw value is `"blue-flare"`.
    static let blueFlare = BlueFlareMove.move
}

enum BlueFlareMove {
    static let move = PokemonMove(rawValue: "blue-flare")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Blue Flare",
            .japanese: "あおいほのお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blueFlare = BlueFlareMove.definition
}
