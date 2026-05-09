import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ミサイルばり in Japanese.
    ///
    /// The localized name of this move is `"Pin Missile"` in English and
    /// `"ミサイルばり"` in Japanese.
    ///
    /// The move's raw value is `"pin-missile"`.
    static let pinMissile = PinMissileMove.move
}

enum PinMissileMove {
    static let move = PokemonMove(rawValue: "pin-missile")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(14),
        hits: .range(2...5),
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(95),
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
            .english: "Pin Missile",
            .japanese: "ミサイルばり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pinMissile = PinMissileMove.definition
}
