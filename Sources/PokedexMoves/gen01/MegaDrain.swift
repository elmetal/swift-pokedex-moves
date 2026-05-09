import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メガドレイン in Japanese.
    ///
    /// The localized name of this move is `"Mega Drain"` in English and
    /// `"メガドレイン"` in Japanese.
    ///
    /// The move's raw value is `"mega-drain"`.
    static let megaDrain = MegaDrainMove.move
}

enum MegaDrainMove {
    static let move = PokemonMove(rawValue: "mega-drain")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
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
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Mega Drain",
            .japanese: "メガドレイン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let megaDrain = MegaDrainMove.definition
}
