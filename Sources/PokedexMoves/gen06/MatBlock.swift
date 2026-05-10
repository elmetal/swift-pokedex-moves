import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たたみがえし in Japanese.
    ///
    /// The localized name of this move is `"Mat Block"` in English and
    /// `"たたみがえし"` in Japanese.
    ///
    /// The move's raw value is `"mat-block"`.
    static let matBlock = MatBlockMove.move
}

enum MatBlockMove {
    static let move = PokemonMove(rawValue: "mat-block")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Mat Block",
            .japanese: "たたみがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let matBlock = MatBlockMove.definition
}
