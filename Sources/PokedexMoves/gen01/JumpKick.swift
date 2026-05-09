import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とびげり in Japanese.
    ///
    /// The localized name of this move is `"Jump Kick"` in English and
    /// `"とびげり"` in Japanese.
    ///
    /// The move's raw value is `"jump-kick"`.
    static let jumpKick = JumpKickMove.move
}

enum JumpKickMove {
    static let move = PokemonMove(rawValue: "jump-kick")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 25,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Jump Kick",
            .japanese: "とびげり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let jumpKick = JumpKickMove.definition
}
