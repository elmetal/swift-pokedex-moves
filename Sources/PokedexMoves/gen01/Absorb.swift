import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すいとる in Japanese.
    ///
    /// The localized name of this move is `"Absorb"` in English and
    /// `"すいとる"` in Japanese.
    ///
    /// The move's raw value is `"absorb"`.
    static let absorb = AbsorbMove.move
}

enum AbsorbMove {
    static let move = PokemonMove(rawValue: "absorb")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 25,
        power: .fixed(20),
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
            .english: "Absorb",
            .japanese: "すいとる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let absorb = AbsorbMove.definition
}
