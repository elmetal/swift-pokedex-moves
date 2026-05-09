import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハイドロポンプ in Japanese.
    ///
    /// The localized name of this move is `"Hydro Pump"` in English and
    /// `"ハイドロポンプ"` in Japanese.
    ///
    /// The move's raw value is `"hydro-pump"`.
    static let hydroPump = HydroPumpMove.move
}

enum HydroPumpMove {
    static let move = PokemonMove(rawValue: "hydro-pump")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 5,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(80),
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
            .english: "Hydro Pump",
            .japanese: "ハイドロポンプ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let hydroPump = HydroPumpMove.definition
}
