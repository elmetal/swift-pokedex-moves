import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フルールカノン in Japanese.
    ///
    /// The localized name of this move is `"Fleur Cannon"` in English and
    /// `"フルールカノン"` in Japanese.
    ///
    /// The move's raw value is `"fleur-cannon"`.
    static let fleurCannon = FleurCannonMove.move
}

enum FleurCannonMove {
    static let move = PokemonMove(rawValue: "fleur-cannon")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
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
            .english: "Fleur Cannon",
            .japanese: "フルールカノン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fleurCannon = FleurCannonMove.definition
}
