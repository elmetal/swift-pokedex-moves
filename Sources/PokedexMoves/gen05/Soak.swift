import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずびたし in Japanese.
    ///
    /// The localized name of this move is `"Soak"` in English and
    /// `"みずびたし"` in Japanese.
    ///
    /// The move's raw value is `"soak"`.
    static let soak = SoakMove.move
}

enum SoakMove {
    static let move = PokemonMove(rawValue: "soak")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Soak",
            .japanese: "みずびたし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let soak = SoakMove.definition
}
