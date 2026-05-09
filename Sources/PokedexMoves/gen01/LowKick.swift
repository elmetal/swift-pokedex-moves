import Foundation

public extension PokemonMove {
    /// The Pokemon move known as けたぐり in Japanese.
    ///
    /// The localized name of this move is `"Low Kick"` in English and
    /// `"けたぐり"` in Japanese.
    ///
    /// The move's raw value is `"low-kick"`.
    static let lowKick = LowKickMove.move
}

enum LowKickMove {
    static let move = PokemonMove(rawValue: "low-kick")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 20,
        power: .varies,
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Low Kick",
            .japanese: "けたぐり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lowKick = LowKickMove.definition
}
