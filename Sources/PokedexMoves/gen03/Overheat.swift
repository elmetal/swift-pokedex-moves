import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーバーヒート in Japanese.
    ///
    /// The localized name of this move is `"Overheat"` in English and
    /// `"オーバーヒート"` in Japanese.
    ///
    /// The move's raw value is `"overheat"`.
    static let overheat = OverheatMove.move
}

enum OverheatMove {
    static let move = PokemonMove(rawValue: "overheat")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Overheat",
            .japanese: "オーバーヒート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let overheat = OverheatMove.definition
}
