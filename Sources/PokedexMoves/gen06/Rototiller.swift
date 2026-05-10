import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たがやす in Japanese.
    ///
    /// The localized name of this move is `"Rototiller"` in English and
    /// `"たがやす"` in Japanese.
    ///
    /// The move's raw value is `"rototiller"`.
    static let rototiller = RototillerMove.move
}

enum RototillerMove {
    static let move = PokemonMove(rawValue: "rototiller")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allPokemon
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
            .english: "Rototiller",
            .japanese: "たがやす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rototiller = RototillerMove.definition
}
