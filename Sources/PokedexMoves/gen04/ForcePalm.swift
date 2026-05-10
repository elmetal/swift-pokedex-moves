import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はっけい in Japanese.
    ///
    /// The localized name of this move is `"Force Palm"` in English and
    /// `"はっけい"` in Japanese.
    ///
    /// The move's raw value is `"force-palm"`.
    static let forcePalm = ForcePalmMove.move
}

enum ForcePalmMove {
    static let move = PokemonMove(rawValue: "force-palm")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Force Palm",
            .japanese: "はっけい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let forcePalm = ForcePalmMove.definition
}
