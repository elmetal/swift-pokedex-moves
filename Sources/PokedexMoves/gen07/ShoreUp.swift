import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すなあつめ in Japanese.
    ///
    /// The localized name of this move is `"Shore Up"` in English and
    /// `"すなあつめ"` in Japanese.
    ///
    /// The move's raw value is `"shore-up"`.
    static let shoreUp = ShoreUpMove.move
}

enum ShoreUpMove {
    static let move = PokemonMove(rawValue: "shore-up")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 5,
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
            .english: "Shore Up",
            .japanese: "すなあつめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shoreUp = ShoreUpMove.definition
}
