import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみなり in Japanese.
    ///
    /// The localized name of this move is `"Thunder"` in English and
    /// `"かみなり"` in Japanese.
    ///
    /// The move's raw value is `"thunder"`.
    static let thunder = ThunderMove.move
}

enum ThunderMove {
    static let move = PokemonMove(rawValue: "thunder")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Thunder",
            .japanese: "かみなり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunder = ThunderMove.definition
}
