import Foundation

public extension PokemonMove {
    /// The Pokemon move known as がんせきほう in Japanese.
    ///
    /// The localized name of this move is `"Rock Wrecker"` in English and
    /// `"がんせきほう"` in Japanese.
    ///
    /// The move's raw value is `"rock-wrecker"`.
    static let rockWrecker = RockWreckerMove.move
}

enum RockWreckerMove {
    static let move = PokemonMove(rawValue: "rock-wrecker")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Rock Wrecker",
            .japanese: "がんせきほう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockWrecker = RockWreckerMove.definition
}
