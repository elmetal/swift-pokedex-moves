import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブレイズキック in Japanese.
    ///
    /// The localized name of this move is `"Blaze Kick"` in English and
    /// `"ブレイズキック"` in Japanese.
    ///
    /// The move's raw value is `"blaze-kick"`.
    static let blazeKick = BlazeKickMove.move
}

enum BlazeKickMove {
    static let move = PokemonMove(rawValue: "blaze-kick")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
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
            .english: "Blaze Kick",
            .japanese: "ブレイズキック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blazeKick = BlazeKickMove.definition
}
