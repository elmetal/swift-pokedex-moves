import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ナインエボルブースト in Japanese.
    ///
    /// The localized name of this move is `"Extreme Evoboost"` in English and
    /// `"ナインエボルブースト"` in Japanese.
    ///
    /// The move's raw value is `"extreme-evoboost"`.
    static let extremeEvoboost = ExtremeEvoboostMove.move
}

enum ExtremeEvoboostMove {
    static let move = PokemonMove(rawValue: "extreme-evoboost")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 1,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Extreme Evoboost",
            .japanese: "ナインエボルブースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let extremeEvoboost = ExtremeEvoboostMove.definition
}
