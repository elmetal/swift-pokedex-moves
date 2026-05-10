import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サンシャインスマッシャー in Japanese.
    ///
    /// The localized name of this move is `"Searing Sunraze Smash"` in English and
    /// `"サンシャインスマッシャー"` in Japanese.
    ///
    /// The move's raw value is `"searing-sunraze-smash"`.
    static let searingSunrazeSmash = SearingSunrazeSmashMove.move
}

enum SearingSunrazeSmashMove {
    static let move = PokemonMove(rawValue: "searing-sunraze-smash")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 1,
        power: .fixed(200),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Searing Sunraze Smash",
            .japanese: "サンシャインスマッシャー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let searingSunrazeSmash = SearingSunrazeSmashMove.definition
}
