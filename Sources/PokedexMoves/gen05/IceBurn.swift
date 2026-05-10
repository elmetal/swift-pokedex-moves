import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コールドフレア in Japanese.
    ///
    /// The localized name of this move is `"Ice Burn"` in English and
    /// `"コールドフレア"` in Japanese.
    ///
    /// The move's raw value is `"ice-burn"`.
    static let iceBurn = IceBurnMove.move
}

enum IceBurnMove {
    static let move = PokemonMove(rawValue: "ice-burn")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Ice Burn",
            .japanese: "コールドフレア",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceBurn = IceBurnMove.definition
}
