import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こおりのキバ in Japanese.
    ///
    /// The localized name of this move is `"Ice Fang"` in English and
    /// `"こおりのキバ"` in Japanese.
    ///
    /// The move's raw value is `"ice-fang"`.
    static let iceFang = IceFangMove.move
}

enum IceFangMove {
    static let move = PokemonMove(rawValue: "ice-fang")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 15,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Ice Fang",
            .japanese: "こおりのキバ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceFang = IceFangMove.definition
}
