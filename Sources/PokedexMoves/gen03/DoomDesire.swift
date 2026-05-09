import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はめつのねがい in Japanese.
    ///
    /// The localized name of this move is `"Doom Desire"` in English and
    /// `"はめつのねがい"` in Japanese.
    ///
    /// The move's raw value is `"doom-desire"`.
    static let doomDesire = DoomDesireMove.move
}

enum DoomDesireMove {
    static let move = PokemonMove(rawValue: "doom-desire")
    static let parameters1 = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .steel,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(100),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters2
            ),
            .init(
                versionGroups: [
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Doom Desire",
            .japanese: "はめつのねがい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let doomDesire = DoomDesireMove.definition
}
