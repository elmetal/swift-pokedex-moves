import Foundation

public extension PokemonMove {
    /// The Pokemon move known as れいとうパンチ in Japanese.
    ///
    /// The localized name of this move is `"Ice Punch"` in English and
    /// `"れいとうパンチ"` in Japanese.
    ///
    /// The move's raw value is `"ice-punch"`.
    static let icePunch = IcePunchMove.move
}

enum IcePunchMove {
    static let move = PokemonMove(rawValue: "ice-punch")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
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
            .english: "Ice Punch",
            .japanese: "れいとうパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let icePunch = IcePunchMove.definition
}
