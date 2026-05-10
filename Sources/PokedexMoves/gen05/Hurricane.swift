import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぼうふう in Japanese.
    ///
    /// The localized name of this move is `"Hurricane"` in English and
    /// `"ぼうふう"` in Japanese.
    ///
    /// The move's raw value is `"hurricane"`.
    static let hurricane = HurricaneMove.move
}

enum HurricaneMove {
    static let move = PokemonMove(rawValue: "hurricane")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
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
            .english: "Hurricane",
            .japanese: "ぼうふう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hurricane = HurricaneMove.definition
}
