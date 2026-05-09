import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たいあたり in Japanese.
    ///
    /// The localized name of this move is `"Tackle"` in English and
    /// `"たいあたり"` in Japanese.
    ///
    /// The move's raw value is `"tackle"`.
    static let tackle = TackleMove.move
}

enum TackleMove {
    static let move = PokemonMove(rawValue: "tackle")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 35,
        power: .fixed(40),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Tackle",
            .japanese: "たいあたり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tackle = TackleMove.definition
}
