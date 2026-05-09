import Foundation

public extension PokemonMove {
    /// The Pokemon move known as そらをとぶ in Japanese.
    ///
    /// The localized name of this move is `"Fly"` in English and
    /// `"そらをとぶ"` in Japanese.
    ///
    /// The move's raw value is `"fly"`.
    static let fly = FlyMove.move
}

enum FlyMove {
    static let move = PokemonMove(rawValue: "fly")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(90),
        hits: .one,
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
            .english: "Fly",
            .japanese: "そらをとぶ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fly = FlyMove.definition
}
