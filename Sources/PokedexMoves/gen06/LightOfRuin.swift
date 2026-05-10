import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はめつのひかり in Japanese.
    ///
    /// The localized name of this move is `"Light of Ruin"` in English and
    /// `"はめつのひかり"` in Japanese.
    ///
    /// The move's raw value is `"light-of-ruin"`.
    static let lightOfRuin = LightOfRuinMove.move
}

enum LightOfRuinMove {
    static let move = PokemonMove(rawValue: "light-of-ruin")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Light of Ruin",
            .japanese: "はめつのひかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lightOfRuin = LightOfRuinMove.definition
}
