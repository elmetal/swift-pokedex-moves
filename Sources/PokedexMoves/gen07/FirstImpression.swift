import Foundation

public extension PokemonMove {
    /// The Pokemon move known as であいがしら in Japanese.
    ///
    /// The localized name of this move is `"First Impression"` in English and
    /// `"であいがしら"` in Japanese.
    ///
    /// The move's raw value is `"first-impression"`.
    static let firstImpression = FirstImpressionMove.move
}

enum FirstImpressionMove {
    static let move = PokemonMove(rawValue: "first-impression")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
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
            .english: "First Impression",
            .japanese: "であいがしら",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let firstImpression = FirstImpressionMove.definition
}
