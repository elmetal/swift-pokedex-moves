import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふんじん in Japanese.
    ///
    /// The localized name of this move is `"Powder"` in English and
    /// `"ふんじん"` in Japanese.
    ///
    /// The move's raw value is `"powder"`.
    static let powder = PowderMove.move
}

enum PowderMove {
    static let move = PokemonMove(rawValue: "powder")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .status,
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
            .english: "Powder",
            .japanese: "ふんじん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powder = PowderMove.definition
}
