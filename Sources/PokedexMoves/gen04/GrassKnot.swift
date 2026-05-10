import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くさむすび in Japanese.
    ///
    /// The localized name of this move is `"Grass Knot"` in English and
    /// `"くさむすび"` in Japanese.
    ///
    /// The move's raw value is `"grass-knot"`.
    static let grassKnot = GrassKnotMove.move
}

enum GrassKnotMove {
    static let move = PokemonMove(rawValue: "grass-knot")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Grass Knot",
            .japanese: "くさむすび",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grassKnot = GrassKnotMove.definition
}
