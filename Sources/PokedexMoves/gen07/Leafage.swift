import Foundation

public extension PokemonMove {
    /// The Pokemon move known as このは in Japanese.
    ///
    /// The localized name of this move is `"Leafage"` in English and
    /// `"このは"` in Japanese.
    ///
    /// The move's raw value is `"leafage"`.
    static let leafage = LeafageMove.move
}

enum LeafageMove {
    static let move = PokemonMove(rawValue: "leafage")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 40,
        power: .fixed(40),
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
            .english: "Leafage",
            .japanese: "このは",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leafage = LeafageMove.definition
}
