import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すてみタックル in Japanese.
    ///
    /// The localized name of this move is `"Double-Edge"` in English and
    /// `"すてみタックル"` in Japanese.
    ///
    /// The move's raw value is `"double-edge"`.
    static let doubleEdge = DoubleEdgeMove.move
}

enum DoubleEdgeMove {
    static let move = PokemonMove(rawValue: "double-edge")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Double-Edge",
            .japanese: "すてみタックル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doubleEdge = DoubleEdgeMove.definition
}
