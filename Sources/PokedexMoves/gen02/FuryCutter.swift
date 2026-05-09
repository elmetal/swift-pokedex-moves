import Foundation

public extension PokemonMove {
    /// The Pokemon move known as れんぞくぎり in Japanese.
    ///
    /// The localized name of this move is `"Fury Cutter"` in English and
    /// `"れんぞくぎり"` in Japanese.
    ///
    /// The move's raw value is `"fury-cutter"`.
    static let furyCutter = FuryCutterMove.move
}

enum FuryCutterMove {
    static let move = PokemonMove(rawValue: "fury-cutter")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Fury Cutter",
            .japanese: "れんぞくぎり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let furyCutter = FuryCutterMove.definition
}
