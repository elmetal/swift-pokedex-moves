import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみなりパンチ in Japanese.
    ///
    /// The localized name of this move is `"Thunder Punch"` in English and
    /// `"かみなりパンチ"` in Japanese.
    ///
    /// The move's raw value is `"thunder-punch"`.
    static let thunderPunch = ThunderPunchMove.move
}

enum ThunderPunchMove {
    static let move = PokemonMove(rawValue: "thunder-punch")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(75),
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
            .english: "Thunder Punch",
            .japanese: "かみなりパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let thunderPunch = ThunderPunchMove.definition
}
