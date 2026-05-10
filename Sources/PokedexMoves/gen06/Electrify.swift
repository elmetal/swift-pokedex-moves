import Foundation

public extension PokemonMove {
    /// The Pokemon move known as そうでん in Japanese.
    ///
    /// The localized name of this move is `"Electrify"` in English and
    /// `"そうでん"` in Japanese.
    ///
    /// The move's raw value is `"electrify"`.
    static let electrify = ElectrifyMove.move
}

enum ElectrifyMove {
    static let move = PokemonMove(rawValue: "electrify")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
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
            .english: "Electrify",
            .japanese: "そうでん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electrify = ElectrifyMove.definition
}
