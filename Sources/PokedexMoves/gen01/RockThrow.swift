import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いわおとし in Japanese.
    ///
    /// The localized name of this move is `"Rock Throw"` in English and
    /// `"いわおとし"` in Japanese.
    ///
    /// The move's raw value is `"rock-throw"`.
    static let rockThrow = RockThrowMove.move
}

enum RockThrowMove {
    static let move = PokemonMove(rawValue: "rock-throw")
    static let parameters1 = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(65),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(50),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
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
            .english: "Rock Throw",
            .japanese: "いわおとし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockThrow = RockThrowMove.definition
}
