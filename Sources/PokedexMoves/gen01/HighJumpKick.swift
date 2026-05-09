import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とびひざげり in Japanese.
    ///
    /// The localized name of this move is `"High Jump Kick"` in English and
    /// `"とびひざげり"` in Japanese.
    ///
    /// The move's raw value is `"high-jump-kick"`.
    static let highJumpKick = HighJumpKickMove.move
}

enum HighJumpKickMove {
    static let move = PokemonMove(rawValue: "high-jump-kick")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "High Jump Kick",
            .japanese: "とびひざげり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let highJumpKick = HighJumpKickMove.definition
}
