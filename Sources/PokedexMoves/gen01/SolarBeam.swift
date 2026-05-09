import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ソーラービーム in Japanese.
    ///
    /// The localized name of this move is `"Solar Beam"` in English and
    /// `"ソーラービーム"` in Japanese.
    ///
    /// The move's raw value is `"solar-beam"`.
    static let solarBeam = SolarBeamMove.move
}

enum SolarBeamMove {
    static let move = PokemonMove(rawValue: "solar-beam")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(200),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(120),
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
            .english: "Solar Beam",
            .japanese: "ソーラービーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let solarBeam = SolarBeamMove.definition
}
