import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じならし in Japanese.
    ///
    /// The localized name of this move is `"Bulldoze"` in English and
    /// `"じならし"` in Japanese.
    ///
    /// The move's raw value is `"bulldoze"`.
    static let bulldoze = BulldozeMove.move
}

enum BulldozeMove {
    static let move = PokemonMove(rawValue: "bulldoze")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
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
            .english: "Bulldoze",
            .japanese: "じならし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bulldoze = BulldozeMove.definition
}
