import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じんつうりき in Japanese.
    ///
    /// The localized name of this move is `"Extrasensory"` in English and
    /// `"じんつうりき"` in Japanese.
    ///
    /// The move's raw value is `"extrasensory"`.
    static let extrasensory = ExtrasensoryMove.move
}

enum ExtrasensoryMove {
    static let move = PokemonMove(rawValue: "extrasensory")
    static let parameters1 = PokemonMove.Parameters(
        type: .psychic,
        pp: 30,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .fixed(80),
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
            .english: "Extrasensory",
            .japanese: "じんつうりき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let extrasensory = ExtrasensoryMove.definition
}
