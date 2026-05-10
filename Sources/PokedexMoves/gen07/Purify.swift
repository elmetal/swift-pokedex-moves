import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じょうか in Japanese.
    ///
    /// The localized name of this move is `"Purify"` in English and
    /// `"じょうか"` in Japanese.
    ///
    /// The move's raw value is `"purify"`.
    static let purify = PurifyMove.move
}

enum PurifyMove {
    static let move = PokemonMove(rawValue: "purify")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
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
            .english: "Purify",
            .japanese: "じょうか",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let purify = PurifyMove.definition
}
