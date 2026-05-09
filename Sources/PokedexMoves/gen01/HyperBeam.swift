import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はかいこうせん in Japanese.
    ///
    /// The localized name of this move is `"Hyper Beam"` in English and
    /// `"はかいこうせん"` in Japanese.
    ///
    /// The move's raw value is `"hyper-beam"`.
    static let hyperBeam = HyperBeamMove.move
}

enum HyperBeamMove {
    static let move = PokemonMove(rawValue: "hyper-beam")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Hyper Beam",
            .japanese: "はかいこうせん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hyperBeam = HyperBeamMove.definition
}
