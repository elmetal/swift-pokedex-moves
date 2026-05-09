import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイビング in Japanese.
    ///
    /// The localized name of this move is `"Dive"` in English and
    /// `"ダイビング"` in Japanese.
    ///
    /// The move's raw value is `"dive"`.
    static let dive = DiveMove.move
}

enum DiveMove {
    static let move = PokemonMove(rawValue: "dive")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Dive",
            .japanese: "ダイビング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let dive = DiveMove.definition
}
