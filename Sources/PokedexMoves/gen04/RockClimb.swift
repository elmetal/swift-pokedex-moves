import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ロッククライム in Japanese.
    ///
    /// The localized name of this move is `"Rock Climb"` in English and
    /// `"ロッククライム"` in Japanese.
    ///
    /// The move's raw value is `"rock-climb"`.
    static let rockClimb = RockClimbMove.move
}

enum RockClimbMove {
    static let move = PokemonMove(rawValue: "rock-climb")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Rock Climb",
            .japanese: "ロッククライム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockClimb = RockClimbMove.definition
}
