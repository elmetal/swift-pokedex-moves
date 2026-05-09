import Foundation

public extension PokemonMove {
    /// The Pokemon move known as れいとうビーム in Japanese.
    ///
    /// The localized name of this move is `"Ice Beam"` in English and
    /// `"れいとうビーム"` in Japanese.
    ///
    /// The move's raw value is `"ice-beam"`.
    static let iceBeam = IceBeamMove.move
}

enum IceBeamMove {
    static let move = PokemonMove(rawValue: "ice-beam")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(90),
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
            .english: "Ice Beam",
            .japanese: "れいとうビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let iceBeam = IceBeamMove.definition
}
