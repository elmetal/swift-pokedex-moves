import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほのおのムチ in Japanese.
    ///
    /// The localized name of this move is `"Fire Lash"` in English and
    /// `"ほのおのムチ"` in Japanese.
    ///
    /// The move's raw value is `"fire-lash"`.
    static let fireLash = FireLashMove.move
}

enum FireLashMove {
    static let move = PokemonMove(rawValue: "fire-lash")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Fire Lash",
            .japanese: "ほのおのムチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fireLash = FireLashMove.definition
}
